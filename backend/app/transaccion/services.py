"""Service para operaciones con Transaccion."""

from typing import Optional
from zoneinfo import ZoneInfo
from fastapi import HTTPException, status
from sqlalchemy.orm import Session
from sqlalchemy.exc import IntegrityError
from datetime import datetime, timedelta

from app.transaccion.models import Transaccion
from app.historial_transaccion.models import HistorialTransaccion
from app.transaccion.schemas import TransaccionCreate, TransaccionUpdate
from app.transaccion.selectors import TransaccionSelectors
from app.recurso.selectors import RecursoSelectors, Filtros
from app.usuario.selectors import UsuarioSelectors

TZ = ZoneInfo("America/Bogota")
class TransaccionService:
    """Service para operaciones con Transaccion."""

    @staticmethod
    def create(db: Session, transaccion_data: TransaccionCreate) -> Optional[Transaccion]:
        """Crea un nuevo transaccion."""
        try:
            
            ahora = datetime.now(TZ)

            
            transaccion_data.fecha_inicio_transaccion = TransaccionService.to_aware(transaccion_data.fecha_inicio_transaccion)
            transaccion_data.fecha_fin_transaccion = TransaccionService.to_aware(transaccion_data.fecha_fin_transaccion)
            
            if transaccion_data.id_empleado_responsable:
                if transaccion_data.fecha_inicio_transaccion is None: 
                    transaccion_data.fecha_inicio_transaccion = ahora
                if transaccion_data.fecha_inicio_transaccion - ahora > timedelta(minutes=5):
                    raise ValueError(f"Los prestamos deben ser registrados al momento de la entrega del recurso (con un margen de 5 minutos)")
            if transaccion_data.id_empleado_responsable is None:
                if transaccion_data.fecha_inicio_transaccion - ahora < timedelta(hours=2):
                    raise ValueError(f"Las reservas deben realizarse con al menos 2 horas de anticipación")
            TransaccionService.validarExistencia(db=db, transaccion_data=transaccion_data)
            if transaccion_data.fecha_inicio_transaccion > transaccion_data.fecha_fin_transaccion:
                raise ValueError(f"la transacción no puede iniciar despues de finalizar")   
            if transaccion_data.fecha_inicio_transaccion.date() != transaccion_data.fecha_fin_transaccion.date():
                raise ValueError(f"la transacción debe empezar y terminar el mismo dia")
            
            
            TransaccionService.validarUsuarios(db=db, transaccion_data=transaccion_data)
            TransaccionService.validarDisponibilidad(db=db, transaccion_data=transaccion_data)

            db_transaccion = Transaccion(**transaccion_data.model_dump())
            db_transaccion.fecha_creacion = ahora
            db.add(db_transaccion)
            db.commit()
            db.refresh(db_transaccion)

            return db_transaccion
        
        except ValueError as e:
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST,
                detail=str(e)
            )
        

    @staticmethod
    def validarExistencia(db: Session, transaccion_data: TransaccionCreate):
        recurso = RecursoSelectors.get_by_id(db=db, id_recurso=transaccion_data.id_recurso)
        if not recurso:
            print(transaccion_data.id_recurso)
            raise ValueError(f"No se encuentró el recurso'")
        
        if not UsuarioSelectors.get_by_id(db=db, id_usuario=transaccion_data.id_usuario):
            raise ValueError(f"No se encuentró el usuario")
        

        if transaccion_data.id_empleado_responsable and not UsuarioSelectors.get_by_id(db=db, id_usuario=transaccion_data.id_empleado_responsable):
            raise ValueError(f"No se encuentró el empleado")
    
        if transaccion_data.id_empleado_responsable is None:
            return
        
        empleado = UsuarioSelectors.get_by_id(db=db, id_usuario=transaccion_data.id_empleado_responsable)
        if not empleado:
            raise ValueError(f"No se encuentró el empleado")
        
        if recurso.tipo_recurso.id_unidad != empleado.id_unidad:
            raise ValueError(f"El empleado no pertenece a la unidad del recurso")
           
    @staticmethod
    def validarUsuarios(db: Session, transaccion_data: TransaccionCreate):
        userType = UsuarioSelectors.get_by_id(db=db,id_usuario=transaccion_data.id_usuario).id_tipo_usuario
        if userType != 4:
            raise ValueError("El usuario indicado no tiene nivel de usuario, solo los usuarios pueden solicitar recursos")
        if transaccion_data.id_empleado_responsable:
            employType = UsuarioSelectors.get_by_id(db=db,id_usuario=transaccion_data.id_empleado_responsable).id_tipo_usuario
            if employType != 3:
                raise ValueError("El usuario indicado no tiene nivel de empleado, solo los empleado pueden dar/recibir recursos")
            
    @staticmethod
    def validarDisponibilidad(db: Session, transaccion_data: TransaccionCreate):
        filtros = Filtros(
            id_recurso=transaccion_data.id_recurso,
            ventana_tiempo_inicio=transaccion_data.fecha_inicio_transaccion,
            ventana_tiempo_fin=transaccion_data.fecha_fin_transaccion,
            disponibilidad_completa=True
        )
        if RecursoSelectors.get_filter(db=db,filtros=filtros,limit=1)==[]:
            raise ValueError("El recurso no está disponible en la ventana de tiempo solicitada")

    @staticmethod
    def to_aware(dt: Optional[datetime]) -> Optional[datetime]:
        if dt is None:
            return None
        if dt.tzinfo is None:
            return dt.replace(tzinfo=TZ)
        return dt.astimezone(TZ)
        
    @staticmethod
    def prestar(db: Session, id_transaccion: int, id_empleado: int, password_user: str) -> Transaccion:
        """Actualiza un transaccion existente de reserva a prestamo."""
        try:
            db_transaccion = TransaccionSelectors.get_by_id(db, id_transaccion)
            if not db_transaccion:
                raise HTTPException(
                    status_code=status.HTTP_404_NOT_FOUND, detail="Transaccion no encontrada"
                )
            if id_empleado is None:
                raise ValueError("El empleado responsable no puede ser nulo")
            estado_actual =  sorted(
                db_transaccion.historial, 
                key=lambda h: h.fecha_cambio, 
                reverse=True
            )[0].estado.id_estado_transaccion
            
            db_empleado = UsuarioSelectors.get_by_id(db=db,id_usuario=id_empleado)
            if not db_empleado:
                raise ValueError("El empleado responsable no existe")
            
            db_usuario = UsuarioSelectors.get_by_id(db=db,id_usuario=db_transaccion.id_usuario)
            if db_usuario.contrasena != password_user:
                raise ValueError("Contraseña de usuario incorrecta")

            if db_empleado.id_unidad != db_transaccion.recurso.tipo_recurso.id_unidad:
                raise ValueError("El empleado responsable no pertenece a la unidad del recurso")
            
            if estado_actual != 1:
                raise ValueError("La transacción no está en estado 'reservado', no se puede cambiar a 'prestado'")
            
            ahora = datetime.now(TZ)
            db_transaccion.fecha_inicio_transaccion = TransaccionService.to_aware(db_transaccion.fecha_inicio_transaccion)
            db_transaccion.fecha_fin_transaccion = TransaccionService.to_aware(db_transaccion.fecha_fin_transaccion)
                
            if db_transaccion.fecha_inicio_transaccion > ahora or ahora > db_transaccion.fecha_fin_transaccion:
                raise ValueError("No se puede prestar la reserva fuera del tiempo de programado")
            
            db_transaccion.id_empleado_responsable = id_empleado
            
            db_historial_transaccion = HistorialTransaccion(
                id_transaccion=id_transaccion,
                estado_nuevo=2,
                usuario_responsable=id_empleado
            )
            db.add(db_historial_transaccion)
            db.commit()
            db.refresh(db_transaccion)
            return db_transaccion
        except ValueError as e:
            print(e)
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST,
                detail=str(e)
            )
        except IntegrityError as e:
            print(e)
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST,
                detail="Error de integridad al actualizar la transacción"
            )
        except Exception as e:
            print(e)
            raise HTTPException(
                status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
                detail="Error interno del servidor al actualizar la transacción"
            )

    @staticmethod
    def devolver(db: Session, id_transaccion: int, id_empleado: int) -> Transaccion:
        """Actualiza un transaccion existente de prestamo a devolucion."""
        try:
            db_transaccion = TransaccionSelectors.get_by_id(db, id_transaccion)
            if not db_transaccion:
                raise ValueError("Transaccion no encontrada")
            if id_empleado is None:
                raise ValueError("El empleado responsable no puede ser nulo")
            estado_actual =  sorted(
                db_transaccion.historial, 
                key=lambda h: h.fecha_cambio, 
                reverse=True
            )[0].estado.id_estado_transaccion
            db_empleado = UsuarioSelectors.get_by_id(db=db,id_usuario=id_empleado)
            if not db_empleado:
                raise ValueError("El empleado responsable no existe")
            
            if db_empleado.id_unidad != db_transaccion.recurso.tipo_recurso.id_unidad:
                raise ValueError("El empleado responsable no pertenece a la unidad del recurso")
            
            if estado_actual != 2:
                raise ValueError("La transacción no está en estado 'prestado', no se puede realizar la devolucion")
            
            db_transaccion.id_empleado_responsable = id_empleado
            
            db_historial_transaccion = HistorialTransaccion(
                id_transaccion=id_transaccion,
                estado_nuevo=4,
                usuario_responsable=id_empleado
            )
            db.add(db_historial_transaccion)
            db.commit()
            db.refresh(db_transaccion)
            return db_transaccion
        except ValueError as e:
            print(e)
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST,
                detail=str(e)
            )
        except IntegrityError as e:
            print(e)
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST,
                detail="Error de integridad al actualizar la transacción"
            )
        except Exception as e:
            print(e)
            raise HTTPException(
                status_code=status.HTTP_500_INTERNAL_SERVER_ERROR,
                detail="Error interno del servidor al actualizar la transacción"
            )