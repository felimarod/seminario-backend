"""Service para operaciones con Unidad."""

from fastapi import HTTPException, status
from sqlalchemy.orm import Session

from app.unidad.models import Unidad
from app.unidad.schemas import UnidadCreate, UnidadUpdate
from app.unidad.selectors import UnidadSelectors


class UnidadService:
    """Service para operaciones con Unidad."""

    @staticmethod
    def create(db: Session, unidad_data: UnidadCreate) -> Unidad:
        """Crea una nueva unidad."""
        existing_unidad = UnidadSelectors.get_by_nombre(db, unidad_data.nombre)
        if existing_unidad:
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST,
                detail="Ya existe una unidad con este nombre",
            )
        db_unidad = Unidad(**unidad_data.model_dump())
        db.add(db_unidad)
        db.commit()
        db.refresh(db_unidad)
        return db_unidad

    @staticmethod
    def update(db: Session, unidad_id: int, unidad_data: UnidadUpdate) -> Unidad:
        """Actualiza una unidad existente."""
        db_unidad = UnidadSelectors.get_by_id(db, unidad_id)
        if not db_unidad:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND, detail="Unidad no encontrada"
            )
        for field, value in unidad_data.model_dump(exclude_unset=True).items():
            setattr(db_unidad, field, value)
        db.commit()
        db.refresh(db_unidad)
        return db_unidad
