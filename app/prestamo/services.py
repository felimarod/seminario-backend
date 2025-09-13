"""Service para operaciones con Prestamo."""

from fastapi import HTTPException, status
from sqlalchemy.orm import Session

from app.prestamo.models import Prestamo
from app.prestamo.schemas import PrestamoCreate
from app.prestamo.selectors import PrestamoSelectors


class PrestamoService:
    """Service para operaciones con Prestamo."""

    @staticmethod
    def create(db: Session, prestamo_data: PrestamoCreate) -> Prestamo:
        """Crea un nuevo préstamo."""
        db_prestamo = Prestamo(**prestamo_data.model_dump())
        db.add(db_prestamo)
        db.commit()
        db.refresh(db_prestamo)
        return db_prestamo
