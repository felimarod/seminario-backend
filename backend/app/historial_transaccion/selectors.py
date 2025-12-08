"""Selectors para el modelo TipoRecurso."""

from typing import List, Optional

from sqlalchemy.orm import Session

from app.historial_transaccion.models import HistorialTransaccion
from app.tipo_recurso.schemas import Filtros


class HistorialTransaccionSelectors:
    """Selectors para el modelo HistorialTransaccion."""

    @staticmethod
    def get_all(db: Session) -> List[HistorialTransaccion]:
        """Obtiene un tipo_recurso por su ID."""
        return db.query(HistorialTransaccion).all()