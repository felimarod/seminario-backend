"""Service para operaciones con Calificacion."""

from fastapi import HTTPException, status
from sqlalchemy.orm import Session

from app.calificacion.models import Calificacion
from app.calificacion.schemas import CalificacionCreate, CalificacionUpdate
from app.calificacion.selectors import CalificacionSelectors


class CalificacionService:
    """Service para operaciones con Calificacion."""

    @staticmethod
    def create(db: Session, calificacion_data: CalificacionCreate) -> Calificacion:
        """Crea una nueva calificación."""
        db_calificacion = Calificacion(**calificacion_data.model_dump())
        db.add(db_calificacion)
        db.commit()
        db.refresh(db_calificacion)
        return db_calificacion

    @staticmethod
    def update(
        db: Session, calificacion_id: int, calificacion_data: CalificacionUpdate
    ) -> Calificacion:
        """Actualiza una calificación existente."""
        db_calificacion = CalificacionSelectors.get_by_id(db, calificacion_id)
        if not db_calificacion:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail="Calificación no encontrada",
            )
        for field, value in calificacion_data.model_dump(exclude_unset=True).items():
            setattr(db_calificacion, field, value)
        db.commit()
        db.refresh(db_calificacion)
        return db_calificacion
