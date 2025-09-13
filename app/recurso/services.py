"""Service para operaciones con Recurso."""

from fastapi import HTTPException, status
from sqlalchemy.orm import Session

from app.recurso.models import Recurso
from app.recurso.schemas import RecursoCreate, RecursoUpdate
from app.recurso.selectors import RecursoSelectors


class RecursoService:
    """Service para operaciones con Recurso."""

    @staticmethod
    def create(db: Session, recurso_data: RecursoCreate) -> Recurso:
        """Crea un nuevo recurso."""
        db_recurso = Recurso(**recurso_data.model_dump())
        db.add(db_recurso)
        db.commit()
        db.refresh(db_recurso)
        return db_recurso

    @staticmethod
    def update(db: Session, recurso_id: int, recurso_data: RecursoUpdate) -> Recurso:
        """Actualiza un recurso existente."""
        db_recurso = RecursoSelectors.get_by_id(db, recurso_id)
        if not db_recurso:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND, detail="Recurso no encontrado"
            )
        for field, value in recurso_data.model_dump(exclude_unset=True).items():
            setattr(db_recurso, field, value)
        db.commit()
        db.refresh(db_recurso)
        return db_recurso
