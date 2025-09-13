"""Selectors para el modelo Prestamo."""

from typing import Optional

from sqlalchemy.orm import Session, selectinload

from app.prestamo.models import Prestamo


class PrestamoSelectors:
    """Selectors para el modelo Prestamo."""

    @staticmethod
    def get_by_id(db: Session, prestamo_id: int) -> Optional[Prestamo]:
        """Obtiene un préstamo por su ID."""
        return (
            db.query(Prestamo)
            .options(selectinload(Prestamo.reserva))
            .filter(Prestamo.id_prestamo == prestamo_id)
            .first()
        )

    @staticmethod
    def get_by_reserva(db: Session, reserva_id: int) -> Optional[Prestamo]:
        """Obtiene un préstamo por reserva."""
        return db.query(Prestamo).filter(Prestamo.id_reserva == reserva_id).first()
