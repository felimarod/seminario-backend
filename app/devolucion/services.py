"""Service para operaciones con Devolucion."""

from fastapi import HTTPException, status
from sqlalchemy.orm import Session

from app.devolucion.models import Devolucion
from app.devolucion.schemas import DevolucionCreate
from app.devolucion.selectors import DevolucionSelectors


class DevolucionService:
    """Service para operaciones con Devolucion."""

    @staticmethod
    def create(db: Session, devolucion_data: DevolucionCreate) -> Devolucion:
        """Crea una nueva devolución."""
        db_devolucion = Devolucion(**devolucion_data.model_dump())
        db.add(db_devolucion)
        db.commit()
        db.refresh(db_devolucion)
        return db_devolucion
