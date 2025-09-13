"""Selectors para el modelo Devolucion."""

from typing import Optional

from sqlalchemy.orm import Session

from app.devolucion.models import Devolucion


class DevolucionSelectors:
    """Selectors para el modelo Devolucion."""

    @staticmethod
    def get_by_id(db: Session, devolucion_id: int) -> Optional[Devolucion]:
        """Obtiene una devolución por su ID."""
        return (
            db.query(Devolucion)
            .filter(Devolucion.id_devolucion == devolucion_id)
            .first()
        )

    @staticmethod
    def get_by_prestamo(db: Session, prestamo_id: int) -> Optional[Devolucion]:
        """Obtiene una devolución por préstamo."""
        return (
            db.query(Devolucion).filter(Devolucion.id_prestamo == prestamo_id).first()
        )
