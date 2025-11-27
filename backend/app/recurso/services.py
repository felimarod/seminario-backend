"""Service para operaciones con Recurso."""

from fastapi import HTTPException, status
from sqlalchemy.orm import Session

from app.recurso.models import Recurso
from app.recurso.schemas import RecursoCreate, RecursoUpdate
from app.recurso.selectors import RecursoSelectors


class RecursoService:
    """Service para operaciones con Recurso."""

    @staticmethod
    def create(db: Session, recurso_data: RecursoCreate, foto_recurso = None) -> Recurso:
        """Crea un nuevo recurso."""
        recursos_tipo = RecursoSelectors.get_by_tipo_recurso(
            db, recurso_data.id_tipo_recurso
        )
        existing_recurso = RecursoSelectors.get_by_nombre(db, recurso_data.nombre_recurso)
        if existing_recurso in recursos_tipo:
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST,
                detail="Ya existe un recurso con este nombre para el tipo de recurso",
            )
        db_recurso = Recurso(**recurso_data.model_dump(),foto_recurso=foto_recurso)
        db.add(db_recurso)
        db.commit()
        db.refresh(db_recurso)
        return db_recurso

    @staticmethod
    def update(db: Session, id_recurso: int, recurso_data: RecursoUpdate) -> Recurso:
        """Actualiza un recurso existente."""
        db_recurso = RecursoSelectors.get_by_id(db, id_recurso)
        if not db_recurso:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND, detail="Recurso no encontrado"
            )
        for field, value in recurso_data.model_dump(exclude_unset=True).items():
            setattr(db_recurso, field, value)
        db.commit()
        db.refresh(db_recurso)
        return db_recurso
