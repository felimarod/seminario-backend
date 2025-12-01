"""Selectors para el modelo TipoTransaccion."""

from typing import List, Optional

from sqlalchemy.orm import Session

from app.tipo_transaccion.models import TipoTransaccion


class TipoTransaccionSelectors:
    """Selectors para el modelo TipoTransaccion."""

    @staticmethod
    def get_by_id(db: Session, id_tipo_transaccion: int) -> Optional[TipoTransaccion]:
        """Obtiene un tipo_transaccion por su ID."""
        return db.query(TipoTransaccion).filter(TipoTransaccion.id_tipo_transaccion == id_tipo_transaccion).first()

    @staticmethod
    def get_all(db: Session, skip: int = 0, limit: int = 100) -> List[TipoTransaccion]:
        """Obtiene todos los tipo_transaccions con paginación."""
        return db.query(TipoTransaccion).offset(skip).limit(limit).all()