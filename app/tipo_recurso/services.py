"""Service para operaciones con TipoRecurso."""

from fastapi import HTTPException, status
from sqlalchemy.orm import Session

from app.tipo_recurso.models import TipoRecurso
from app.tipo_recurso.schemas import TipoRecursoCreate, TipoRecursoUpdate
from app.tipo_recurso.selectors import TipoRecursoSelectors


class TipoRecursoService:
    """Service para operaciones con TipoRecurso."""

    @staticmethod
    def create(db: Session, tipo_data: TipoRecursoCreate) -> TipoRecurso:
        """Crea un nuevo tipo de recurso."""
        existing_tipo = TipoRecursoSelectors.get_by_identificador(
            db, tipo_data.identificador
        )
        if existing_tipo:
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST,
                detail="Ya existe un tipo de recurso con este identificador",
            )
        db_tipo = TipoRecurso(**tipo_data.model_dump())
        db.add(db_tipo)
        db.commit()
        db.refresh(db_tipo)
        return db_tipo

    @staticmethod
    def update(db: Session, tipo_id: int, tipo_data: TipoRecursoUpdate) -> TipoRecurso:
        """Actualiza un tipo de recurso existente."""
        db_tipo = TipoRecursoSelectors.get_by_id(db, tipo_id)
        if not db_tipo:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND,
                detail="Tipo de recurso no encontrado",
            )
        for field, value in tipo_data.model_dump(exclude_unset=True).items():
            setattr(db_tipo, field, value)
        db.commit()
        db.refresh(db_tipo)
        return db_tipo
