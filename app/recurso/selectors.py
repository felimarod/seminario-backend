"""Selectors para el modelo Recurso."""

from typing import List, Optional

from sqlalchemy.orm import Session

from app.recurso.models import Recurso


class RecursoSelectors:
    """Selectors para el modelo Recurso."""

    @staticmethod
    def get_by_id(db: Session, recurso_id: int) -> Optional[Recurso]:
        """Obtiene un recurso por su ID."""
        return db.query(Recurso).filter(Recurso.id_recurso == recurso_id).first()

    @staticmethod
    def get_by_tipo(
        db: Session, tipo_id: int, skip: int = 0, limit: int = 100
    ) -> List[Recurso]:
        """Obtiene recursos por tipo."""
        return (
            db.query(Recurso)
            .filter(Recurso.id_tipo == tipo_id)
            .offset(skip)
            .limit(limit)
            .all()
        )

    @staticmethod
    def get_all(db: Session, skip: int = 0, limit: int = 100) -> List[Recurso]:
        """Obtiene todos los recursos con paginación."""
        return db.query(Recurso).offset(skip).limit(limit).all()

    @staticmethod
    def search_by_nombre(
        db: Session, nombre: str, skip: int = 0, limit: int = 100
    ) -> List[Recurso]:
        """Busca recursos por nombre."""
        return (
            db.query(Recurso)
            .filter(Recurso.nombre.ilike(f"%{nombre}%"))
            .offset(skip)
            .limit(limit)
            .all()
        )
