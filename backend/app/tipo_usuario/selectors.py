"""Selectors para el modelo TipoUsuario."""

from typing import List, Optional

from sqlalchemy.orm import Session

from app.tipo_usuario.models import TipoUsuario


class TipoUsuarioSelectors:
    """Selectors para el modelo TipoUsuario."""

    @staticmethod
    def get_by_id(db: Session, id_tipo_usuario: int) -> Optional[TipoUsuario]:
        """Obtiene un tipo_usuario por su ID."""
        return db.query(TipoUsuario).filter(TipoUsuario.id_tipo_usuario == id_tipo_usuario).first()

    @staticmethod
    def get_all(db: Session, skip: int = 0, limit: int = 100) -> List[TipoUsuario]:
        """Obtiene todos los tipo_usuarios con paginación."""
        return db.query(TipoUsuario).offset(skip).limit(limit).all()