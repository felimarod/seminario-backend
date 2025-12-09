"""Service para operaciones con Calificacion."""

from typing import Optional
from fastapi import HTTPException, status
from sqlalchemy.orm import Session
from sqlalchemy.exc import IntegrityError
from datetime import datetime, timedelta
from zoneinfo import ZoneInfo

from app.calificacion.models import Calificacion
from app.calificacion.schemas import CalificacionCreate
from app.transaccion.selectors import TransaccionSelectors
from app.usuario.selectors import UsuarioSelectors

TZ = ZoneInfo("America/Bogota")
class CalificacionService:
    """Service para operaciones con Calificacion."""

    @staticmethod
    def create(db: Session, calificacion_data: CalificacionCreate, user_id: int) -> Calificacion:
        """Crea un nuevo calificacion."""
        try:
            transaccion = TransaccionSelectors.get_by_id(db=db, id_transaccion=calificacion_data.id_transaccion)
            if not transaccion:
                raise ValueError("Transacción no encontrada")
            if transaccion.id_usuario != user_id:
                raise ValueError("No tienes permiso para calificar esta transacción")
            if len(transaccion.calificaciones) > 0:
                raise ValueError("Esta transacción ya tiene una calificación")
            
            ahora = datetime.now(TZ)
            ultimaHistoria =  sorted(
                transaccion.historial, 
                key=lambda h: h.fecha_cambio, 
                reverse=True
            )[0]
            if ultimaHistoria.estado_nuevo != 4:  # Estado 4 es 'completada'
                raise ValueError("Esta transaccion aun no se completa")
            
            if (ahora - CalificacionService.to_aware(ultimaHistoria.fecha_cambio)) > timedelta(days=3):
                raise ValueError("El periodo para calificar esta transacción ha expirado")

            db_calificacion = Calificacion(**calificacion_data.model_dump())
            db.add(db_calificacion)
            db.commit()
            db.refresh(db_calificacion)
            return db_calificacion
        except ValueError as e:
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
    def to_aware(dt: Optional[datetime]) -> Optional[datetime]:
        if dt is None:
            return None
        if dt.tzinfo is None:
            return dt.replace(tzinfo=TZ)
        return dt.astimezone(TZ)