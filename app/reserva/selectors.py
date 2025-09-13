"""Selectors para el modelo Reserva."""

from typing import List, Optional

from sqlalchemy import desc
from sqlalchemy.orm import Session, selectinload

from app.reserva.models import Reserva


class ReservaSelectors:
    """Selectors para el modelo Reserva."""

    @staticmethod
    def get_by_id(db: Session, reserva_id: int) -> Optional[Reserva]:
        """Obtiene una reserva por su ID."""
        return (
            db.query(Reserva)
            .options(selectinload(Reserva.recurso), selectinload(Reserva.usuario))
            .filter(Reserva.id_reserva == reserva_id)
            .first()
        )

    @staticmethod
    def get_by_usuario(
        db: Session, usuario_id: int, skip: int = 0, limit: int = 100
    ) -> List[Reserva]:
        """Obtiene reservas por usuario."""
        return (
            db.query(Reserva)
            .options(selectinload(Reserva.recurso))
            .filter(Reserva.id_usuario == usuario_id)
            .order_by(desc(Reserva.fecha))
            .offset(skip)
            .limit(limit)
            .all()
        )

    @staticmethod
    def get_by_recurso(
        db: Session, recurso_id: int, skip: int = 0, limit: int = 100
    ) -> List[Reserva]:
        """Obtiene reservas por recurso."""
        return (
            db.query(Reserva)
            .options(selectinload(Reserva.usuario))
            .filter(Reserva.id_recurso == recurso_id)
            .order_by(desc(Reserva.fecha))
            .offset(skip)
            .limit(limit)
            .all()
        )

    @staticmethod
    def get_by_estado(
        db: Session, estado: str, skip: int = 0, limit: int = 100
    ) -> List[Reserva]:
        """Obtiene reservas por estado."""
        return (
            db.query(Reserva)
            .filter(Reserva.estado == estado)
            .order_by(desc(Reserva.fecha))
            .offset(skip)
            .limit(limit)
            .all()
        )
