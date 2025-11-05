"""Service para operaciones con TipoRecurso."""

from fastapi import HTTPException, status
from sqlalchemy.orm import Session

from app.tipo_recurso.models import TipoRecurso
from app.tipo_recurso.schemas import TipoRecursoCreate, TipoRecursoUpdate
from app.tipo_recurso.selectors import TipoRecursoSelectors


class TipoRecursoService:
    """Service para operaciones con TipoRecurso."""

    @staticmethod
    def create(db: Session, tipo_recurso_data: TipoRecursoCreate) -> TipoRecurso:
        """Crea un nuevo tipo_recurso."""
        tipos_recursos_unidad = TipoRecursoSelectors.get_by_unidad_tipo_recurso(
            db, tipo_recurso_data.id_unidad
        )
        existing_tipo_recurso = TipoRecursoSelectors.get_by_nombre(db, tipo_recurso_data.nombre_tipo_recurso)
        if existing_tipo_recurso in tipos_recursos_unidad:
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST,
                detail="Ya existe un tipo_recurso con este nombre en la unidad",
            )
        db_tipo_recurso = TipoRecurso(**tipo_recurso_data.model_dump())
        db.add(db_tipo_recurso)
        db.commit()
        db.refresh(db_tipo_recurso)
        return db_tipo_recurso

    @staticmethod
    def update(db: Session, id_tipo_recurso: int, tipo_recurso_data: TipoRecursoUpdate) -> TipoRecurso:
        """Actualiza un tipo_recurso existente."""
        db_tipo_recurso = TipoRecursoSelectors.get_by_id(db, id_tipo_recurso)
        if not db_tipo_recurso:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND, detail="TipoRecurso no encontrado"
            )
        for field, value in tipo_recurso_data.model_dump(exclude_unset=True).items():
            setattr(db_tipo_recurso, field, value)
        db.commit()
        db.refresh(db_tipo_recurso)
        return db_tipo_recurso
