"""Pydantic schemas para Estado Transaccion."""

from datetime import datetime
from typing import Optional, Dict, Any

from pydantic import BaseModel, Field

from app.estado_transaccion.models import EstadoTransaccion



class EstadoTransaccionResponse(BaseModel):
    """Schema para respuesta de Estado Transaccion."""

    id_estado_transaccion: int
    nombre_estado_transaccion: str

    @classmethod
    def from_estado_transaccion_db(cls, estado_transaccion_db: EstadoTransaccion):
        data = estado_transaccion_db.__dict__.copy()
        data["id_estado_transaccion"] = estado_transaccion_db.id_estado_transaccion
        data["nombre_estado_transaccion"] = estado_transaccion_db.nombre_estado_transaccion
        return cls.from_orm(data)
