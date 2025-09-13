"""Selectors para el modelo Unidad."""

from typing import List, Optional

from sqlalchemy.orm import Session

from app.unidad.models import Unidad


class UnidadSelectors:
    """Selectors para el modelo Unidad."""

    @staticmethod
    def get_by_id(db: Session, unidad_id: int) -> Optional[Unidad]:
        """Obtiene una unidad por su ID."""
        return db.query(Unidad).filter(Unidad.id_unidad == unidad_id).first()

    @staticmethod
    def get_all(db: Session, skip: int = 0, limit: int = 100) -> List[Unidad]:
        """Obtiene todas las unidades con paginación."""
        return db.query(Unidad).offset(skip).limit(limit).all()

    @staticmethod
    def get_by_nombre(db: Session, nombre: str) -> Optional[Unidad]:
        """Obtiene una unidad por su nombre."""
        return db.query(Unidad).filter(Unidad.nombre == nombre).first()
