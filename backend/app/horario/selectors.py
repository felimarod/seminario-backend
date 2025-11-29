"""Selectors para el modelo Horario."""

from typing import List, Optional

from sqlalchemy.orm import Session

from app.horario.models import Horario, HorarioDetalle


class HorarioSelectors:
    """Selectors para el modelo Horario."""

    @staticmethod
    def get_by_id(db: Session, id_horario: str) -> Optional[Horario]:
        """Obtiene un horario por su ID."""
        return db.query(Horario).filter(Horario.id_horario == id_horario).first()

    @staticmethod
    def get_all(db: Session, skip: int = 0, limit: int = 100) -> List[Horario]:
        """Obtiene todos los horarios con paginación."""
        return db.query(Horario).offset(skip).limit(limit).all()

    @staticmethod
    def get_detaills_by_id(
        db: Session, id_horario: str, skip: int = 0, limit: int = 100
    ) -> List[HorarioDetalle]:
        """Obtiene horarios por tipo de horario."""
        print("ss")
        return (
            db.query(HorarioDetalle)
            .filter(HorarioDetalle.id_horario == id_horario)
            .offset(skip)
            .limit(limit)
            .all()
        )