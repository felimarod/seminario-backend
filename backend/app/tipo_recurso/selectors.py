"""Selectors para el modelo TipoRecurso."""

from typing import List, Optional

from sqlalchemy.orm import Session

from app.tipo_recurso.models import TipoRecurso
from app.tipo_recurso.schemas import Filtros


class TipoRecursoSelectors:
    """Selectors para el modelo TipoRecurso."""

    @staticmethod
    def get_by_id(db: Session, id_tipo_recurso: int) -> Optional[TipoRecurso]:
        """Obtiene un tipo_recurso por su ID."""
        return db.query(TipoRecurso).filter(TipoRecurso.id_tipo_recurso == id_tipo_recurso).first()

    @staticmethod
    def get_by_nombre(db: Session, nombre: str) -> Optional[TipoRecurso]:
        """Obtiene un tipo_recurso por su nombre."""
        return db.query(TipoRecurso).filter(TipoRecurso.nombre_tipo_recurso == nombre).first()

    @staticmethod
    def get_filter(db: Session, filtros: Filtros, skip: int = 0, limit: int = 100) -> List[TipoRecurso]:
        """Obtiene todos los tipo_recursos filtrados con paginación."""
        query = db.query(TipoRecurso)
        if filtros.id_unidad:
            query = query.filter(TipoRecurso.id_unidad == filtros.id_unidad)
        if filtros.horario_disponibilidad:
            query = query.filter(TipoRecurso.horario_disponibilidad == filtros.horario_disponibilidad)
        
        
        return query.offset(skip).limit(limit).all()
    
    @staticmethod
    def get_all(db: Session, skip: int = 0, limit: int = 100) -> List[TipoRecurso]:
        """Obtiene todos los tipo_recursos con paginación."""
        return db.query(TipoRecurso).offset(skip).limit(limit).all()

    @staticmethod
    def get_by_unidad_tipo_recurso(
        db: Session, id_unidad: int, skip: int = 0, limit: int = 100
    ) -> List[TipoRecurso]:
        """Obtiene tipo_recursos por unidad."""
        return (
            db.query(TipoRecurso)
            .filter(TipoRecurso.id_unidad == id_unidad)
            .offset(skip)
            .limit(limit)
            .all()
        )
