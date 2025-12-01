"""Service para operaciones con Transaccion."""

from typing import Optional
from fastapi import HTTPException, status
from sqlalchemy.orm import Session
from sqlalchemy.exc import IntegrityError
from datetime import datetime, timedelta

from app.transaccion.models import Transaccion
from app.transaccion.schemas import TransaccionCreate, TransaccionUpdate, Filtros
from app.transaccion.selectors import TransaccionSelectors
from app.recurso.selectors import RecursoSelectors
from app.tipo_recurso.selectors import TipoRecursoSelectors
from app.horario.selectors import HorarioSelectors
from app.usuario.selectors import UsuarioSelectors


class TransaccionService:
    """Service para operaciones con Transaccion."""

    @staticmethod
    def create(db: Session, transaccion_data: TransaccionCreate) -> Optional[Transaccion]:
        """Crea un nuevo transaccion."""
        try:
            ahora = datetime.now()
            TransaccionService.validarExistencia(db=db, transaccion_data=transaccion_data)
            
            if transaccion_data.fecha_inicio_transaccion < ahora:
                raise ValueError(f"la transacción no puede iniciar antes de la hora actual")
            if transaccion_data.fecha_inicio_transaccion > transaccion_data.fecha_fin_transaccion:
                raise ValueError(f"la transacción no puede iniciar despues de finalizar")   
            if transaccion_data.fecha_inicio_transaccion.date() != transaccion_data.fecha_fin_transaccion.date():
                raise ValueError(f"la transacción debe empezar y terminar el mismo dia")
            print("pre")
            if transaccion_data.id_tipo_transaccion == 1:
                print("pres")
                if transaccion_data.id_empleado_responsable is not None:
                    print("presa")  
                    raise ValueError(f"Las reservas no deben tener empleados responsables asignados")
            else:
                if transaccion_data.id_empleado_responsable is None:
                    raise ValueError(f"Los prestamos deben tener un empleado responsable asignado")

            TransaccionService.validarUsuarios(db=db, transaccion_data=transaccion_data)
            TransaccionService.validarBloque(db=db,transaccion_data=transaccion_data)
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
        
        return db_transaccion

    @staticmethod
    def validarExistencia(db: Session, transaccion_data: TransaccionCreate):
        if not RecursoSelectors.get_by_id(db=db, id_recurso=transaccion_data.id_recurso):
            print(transaccion_data.id_recurso)
            raise ValueError(f"No se encuentró el recurso'")
        
        if not UsuarioSelectors.get_by_id(db=db, id_usuario=transaccion_data.id_usuario):
            raise ValueError(f"No se encuentró el usuario")
        
        if not TransaccionSelectors.get_by_id(db=db, id_transaccion=transaccion_data.id_tipo_transaccion):
            raise ValueError(f"No se encuentró el tipo de transacción")
        
        if transaccion_data.id_empleado_responsable and not UsuarioSelectors.get_by_id(db=db, id_usuario=transaccion_data.id_empleado_responsable):
            raise ValueError(f"No se encuentró el empleado")
    
    @staticmethod
    def validarBloque(db: Session, transaccion_data: TransaccionCreate):
        diasStr = ["Lunes","Martes","Miercoles","Jueves","Viernes","Sabado","Domingo","Festivos"]
        id_tipo_recurso = RecursoSelectors.get_by_id(db=db,id_recurso=transaccion_data.id_recurso).id_tipo_recurso
        horario_recurso = TipoRecursoSelectors.get_by_id(db=db,id_tipo_recurso=id_tipo_recurso).horario_disponibilidad        
        details = HorarioSelectors.get_detaills_by_id(db=db,id_horario=horario_recurso)
        dia = diasStr[transaccion_data.fecha_inicio_transaccion.weekday()]
        detailsDay = [x for x in details if x.dia_semana==dia]
        for detail in detailsDay:
            if(detail.hora_apertura <= TransaccionService.time_to_timedelta(transaccion_data.fecha_inicio_transaccion.time())
               and detail.hora_cierre >= TransaccionService.time_to_timedelta(transaccion_data.fecha_fin_transaccion.time())
               ):
                return
        raise ValueError(f"El valor no encaja dentro de el horario del recurso")
    
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
        inicio = transaccion_data.fecha_inicio_transaccion.date()
        fin = inicio + timedelta(days=1)
        filtros = Filtros(
            id_recurso=transaccion_data.id_recurso,
            id_tipo_transaccion=transaccion_data.id_tipo_transaccion,
            ventana_tiempo_inicio=inicio,
            ventana_tiempo_fin=fin,
            ventana_atributo="fin"
        )
        reservas = TransaccionSelectors.get_filter(db=db,filtros=filtros,limit=1000)
        for reserva in reservas:
            if not (reserva.fecha_inicio_transaccion > transaccion_data.fecha_fin_transaccion
                or reserva.fecha_fin_transaccion < transaccion_data.fecha_inicio_transaccion):
                raise ValueError("Conflicto con reservas existentes")
    @staticmethod
    def time_to_timedelta(t: datetime.time) -> timedelta:
        return timedelta(hours=t.hour, minutes=t.minute, seconds=t.second)

    @staticmethod
    def update(db: Session, id_transaccion: int, transaccion_data: TransaccionUpdate) -> Transaccion:
        """Actualiza un transaccion existente."""
        db_transaccion = TransaccionSelectors.get_by_id(db, id_transaccion)
        if not db_transaccion:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND, detail="Transaccion no encontrado"
            )
        for field, value in transaccion_data.model_dump(exclude_unset=True).items():
            setattr(db_transaccion, field, value)
        db.commit()
        db.refresh(db_transaccion)
        return db_transaccion
