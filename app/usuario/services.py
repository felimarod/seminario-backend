"""Service para operaciones con Usuario."""

from fastapi import HTTPException, status
from sqlalchemy.orm import Session

from app.usuario.models import Usuario
from app.usuario.schemas import UsuarioCreate, UsuarioUpdate
from app.usuario.selectors import UsuarioSelectors


class UsuarioService:
    """Service para operaciones con Usuario."""

    @staticmethod
    def create(db: Session, usuario_data: UsuarioCreate) -> Usuario:
        """Crea un nuevo usuario."""
        existing_usuario = UsuarioSelectors.get_by_email(db, usuario_data.email)
        if existing_usuario:
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST,
                detail="Ya existe un usuario con este email",
            )
        db_usuario = Usuario(**usuario_data.model_dump())
        db.add(db_usuario)
        db.commit()
        db.refresh(db_usuario)
        return db_usuario

    @staticmethod
    def update(db: Session, usuario_id: int, usuario_data: UsuarioUpdate) -> Usuario:
        """Actualiza un usuario existente."""
        db_usuario = UsuarioSelectors.get_by_id(db, usuario_id)
        if not db_usuario:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND, detail="Usuario no encontrado"
            )
        for field, value in usuario_data.model_dump(exclude_unset=True).items():
            setattr(db_usuario, field, value)
        db.commit()
        db.refresh(db_usuario)
        return db_usuario
