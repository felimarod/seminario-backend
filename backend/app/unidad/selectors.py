"""Selectors para el modelo Unidad."""

from typing import List, Optional

from sqlalchemy.orm import Session

from app.unidad.models import Unidad


class UnidadSelectors:
    """Selectors para el modelo Unidad."""

    @staticmethod
    def get_by_id(db: Session, id_unidad: int) -> Optional[Unidad]:
        """Obtiene un unidad por su ID."""
        return db.query(Unidad).filter(Unidad.id_unidad == id_unidad).first()

    @staticmethod
    def get_all(db: Session, skip: int = 0, limit: int = 100) -> List[Unidad]:
        """Obtiene todos los unidads con paginación."""
        return db.query(Unidad).offset(skip).limit(limit).all()