"""Selectors para el modelo Usuario."""

from typing import List, Optional

from sqlalchemy.orm import Session

from app.usuario.models import Usuario


class UsuarioSelectors:
    """Selectors para el modelo Usuario."""

    @staticmethod
    def get_by_id(db: Session, usuario_id: int) -> Optional[Usuario]:
        """Obtiene un usuario por su ID."""
        return db.query(Usuario).filter(Usuario.id_usuario == usuario_id).first()

    @staticmethod
    def get_by_email(db: Session, email: str) -> Optional[Usuario]:
        """Obtiene un usuario por su email."""
        return db.query(Usuario).filter(Usuario.email == email).first()

    @staticmethod
    def get_all(db: Session, skip: int = 0, limit: int = 100) -> List[Usuario]:
        """Obtiene todos los usuarios con paginación."""
        return db.query(Usuario).offset(skip).limit(limit).all()

    @staticmethod
    def get_by_unidad(
        db: Session, unidad_id: int, skip: int = 0, limit: int = 100
    ) -> List[Usuario]:
        """Obtiene usuarios por unidad."""
        return (
            db.query(Usuario)
            .filter(Usuario.id_unidad == unidad_id)
            .offset(skip)
            .limit(limit)
            .all()
        )
