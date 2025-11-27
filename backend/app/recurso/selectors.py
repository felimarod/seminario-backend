"""Selectors para el modelo Recurso."""

from typing import List, Optional

from sqlalchemy.orm import Session

from app.recurso.models import Recurso
from app.tipo_recurso.models import TipoRecurso


class RecursoSelectors:
    """Selectors para el modelo Recurso."""

    @staticmethod
    def get_by_id(db: Session, id_recurso: int) -> Optional[Recurso]:
        """Obtiene un recurso por su ID."""
        return db.query(Recurso).filter(Recurso.id_recurso == id_recurso).first()

    @staticmethod
    def get_by_nombre(db: Session, nombre: str) -> Optional[Recurso]:
        """Obtiene un recurso por su nombre."""
        return db.query(Recurso).filter(Recurso.nombre_recurso == nombre).first()

    @staticmethod
    def get_all(db: Session, skip: int = 0, limit: int = 100) -> List[Recurso]:
        """Obtiene todos los recursos con paginación."""
        return db.query(Recurso).offset(skip).limit(limit).all()

    @staticmethod
    def get_by_tipo_recurso(
        db: Session, id_tipo_recurso: int, skip: int = 0, limit: int = 100
    ) -> List[Recurso]:
        """Obtiene recursos por tipo de recurso."""
        return (
            db.query(Recurso)
            .filter(Recurso.id_tipo_recurso == id_tipo_recurso)
            .offset(skip)
            .limit(limit)
            .all()
        )
    
    @staticmethod
    def get_by_unidad(
        db: Session, id_unidad: int, skip: int = 0, limit: int = 100
    ) -> List[Recurso]:
        """Obtiene recursos por tipo de recurso."""
        
        return (
            db.query(Recurso)
            .join(TipoRecurso, TipoRecurso.id_tipo_recurso == Recurso.id_tipo_recurso)
            .filter(TipoRecurso.id_unidad == id_unidad)
            .offset(skip)
            .limit(limit)
            .all()
        )
