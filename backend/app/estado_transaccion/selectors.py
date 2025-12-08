"""Selectors para el modelo TipoRecurso."""

from typing import List, Optional

from sqlalchemy.orm import Session

from app.estado_transaccion.models import EstadoTransaccion
from app.tipo_recurso.schemas import Filtros


class EstadoTransaccionSelectors:
    """Selectors para el modelo EstadoTransaccion."""

    @staticmethod
    def get_all(db: Session) -> List[EstadoTransaccion]:
        """Obtiene un tipo_recurso por su ID."""
        return db.query(EstadoTransaccion).all()