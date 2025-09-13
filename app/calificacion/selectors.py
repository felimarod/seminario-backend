"""Selectors para el modelo Calificacion."""

from typing import Optional

from sqlalchemy.orm import Session

from app.calificacion.models import Calificacion


class CalificacionSelectors:
    """Selectors para el modelo Calificacion."""

    @staticmethod
    def get_by_id(db: Session, calificacion_id: int) -> Optional[Calificacion]:
        """Obtiene una calificación por su ID."""
        return (
            db.query(Calificacion)
            .filter(Calificacion.id_calificacion == calificacion_id)
            .first()
        )

    @staticmethod
    def get_by_reserva(db: Session, reserva_id: int) -> Optional[Calificacion]:
        """Obtiene una calificación por reserva."""
        return (
            db.query(Calificacion).filter(Calificacion.id_reserva == reserva_id).first()
        )
