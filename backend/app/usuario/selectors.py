"""Selectors para el modelo Usuario."""

from typing import List, Optional

from sqlalchemy.orm import Session

from app.usuario.models import Usuario


class UsuarioSelectors:
    """Selectors para el modelo Usuario."""

    @staticmethod
    def login(db: Session, correo: str, password: str) -> Optional[Usuario]:
        """Obtiene un usuario por su correo y contraseña."""
        return db.query(Usuario).filter(Usuario.email == correo, Usuario.password == password).first()

    @staticmethod
    def get_by_id(db: Session, id_usuario: int) -> Optional[Usuario]:
        """Obtiene un usuario por su ID."""
        return db.query(Usuario).filter(Usuario.id_usuario == id_usuario).first()

    @staticmethod
    def get_by_correo(db: Session, correo: str) -> Optional[Usuario]:
        """Obtiene un usuario por su correo."""
        return db.query(Usuario).filter(Usuario.correo == correo).first()

    @staticmethod
    def get_all(db: Session, skip: int = 0, limit: int = 100) -> List[Usuario]:
        """Obtiene todos los usuarios con paginación."""
        return db.query(Usuario).offset(skip).limit(limit).all()

    @staticmethod
    def get_by_tipo_usuario(
        db: Session, id_tipo_usuario: int, skip: int = 0, limit: int = 100
    ) -> List[Usuario]:
        """Obtiene usuarios por unidad."""
        return (
            db.query(Usuario)
            .filter(Usuario.id_tipo_usuario == id_tipo_usuario)
            .offset(skip)
            .limit(limit)
            .all()
        )
