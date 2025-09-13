"""Selectors para el modelo TipoRecurso."""

from typing import List, Optional

from sqlalchemy.orm import Session

from app.tipo_recurso.models import TipoRecurso


class TipoRecursoSelectors:
    """Selectors para el modelo TipoRecurso."""

    @staticmethod
    def get_by_id(db: Session, tipo_id: int) -> Optional[TipoRecurso]:
        """Obtiene un tipo de recurso por su ID."""
        return db.query(TipoRecurso).filter(TipoRecurso.id_tipo == tipo_id).first()

    @staticmethod
    def get_by_unidad(
        db: Session, unidad_id: int, skip: int = 0, limit: int = 100
    ) -> List[TipoRecurso]:
        """Obtiene tipos de recurso por unidad."""
        return (
            db.query(TipoRecurso)
            .filter(TipoRecurso.id_unidad == unidad_id)
            .offset(skip)
            .limit(limit)
            .all()
        )

    @staticmethod
    def get_by_identificador(db: Session, identificador: str) -> Optional[TipoRecurso]:
        """Obtiene un tipo de recurso por su identificador."""
        return (
            db.query(TipoRecurso)
            .filter(TipoRecurso.identificador == identificador)
            .first()
        )
