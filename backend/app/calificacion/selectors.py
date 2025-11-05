"""Selectors para el modelo Calificacion."""

from typing import List, Optional

from sqlalchemy.orm import Session

from app.calificacion.models import Calificacion


class CalificacionSelectors:
    """Selectors para el modelo Calificacion."""

    @staticmethod
    def get_by_id(db: Session, id_calificacion: int) -> Optional[Calificacion]:
        """Obtiene un calificacion por su ID."""
        return db.query(Calificacion).filter(Calificacion.id_calificacion == id_calificacion).first()

    @staticmethod
    def get_by_transaccion(db: Session, id_transaccion: int) -> Optional[Calificacion]:
        """Obtiene un calificacion por su ID de transacción."""
        return db.query(Calificacion).filter(Calificacion.id_transaccion == id_transaccion).first()

    @staticmethod
    def get_all(db: Session, skip: int = 0, limit: int = 100) -> List[Calificacion]:
        """Obtiene todos los calificacions con paginación."""
        return db.query(Calificacion).offset(skip).limit(limit).all()
