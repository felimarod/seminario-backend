"""Service para operaciones con Reserva."""

from fastapi import HTTPException, status
from sqlalchemy.orm import Session

from app.reserva.models import Reserva
from app.reserva.schemas import ReservaCreate, ReservaUpdate
from app.reserva.selectors import ReservaSelectors


class ReservaService:
    """Service para operaciones con Reserva."""

    @staticmethod
    def create(db: Session, reserva_data: ReservaCreate) -> Reserva:
        """Crea una nueva reserva."""
        db_reserva = Reserva(**reserva_data.model_dump())
        db.add(db_reserva)
        db.commit()
        db.refresh(db_reserva)
        return db_reserva

    @staticmethod
    def update(db: Session, reserva_id: int, reserva_data: ReservaUpdate) -> Reserva:
        """Actualiza una reserva existente."""
        db_reserva = ReservaSelectors.get_by_id(db, reserva_id)
        if not db_reserva:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND, detail="Reserva no encontrada"
            )
        for field, value in reserva_data.model_dump(exclude_unset=True).items():
            setattr(db_reserva, field, value)
        db.commit()
        db.refresh(db_reserva)
        return db_reserva
