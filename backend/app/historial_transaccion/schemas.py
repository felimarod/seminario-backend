"""Pydantic schemas para Tipo Recurso."""

from datetime import datetime
from typing import Optional, Dict, Any

from pydantic import BaseModel, Field

from app.historial_transaccion.models import HistorialTransaccion



class HistorialTransaccionResponse(BaseModel):
    """Schema para respuesta de Tipo Recurso."""

    fecha: datetime
    transaccion: Optional[Dict[str,Any]] = None
    usuario: Optional[Dict[str,Any]] = None
    estado: Optional[Dict[str,Any]] = None
    model_config = {"from_attributes": True}

    @classmethod
    def from_historial_db(cls, historial_transaccion_db: HistorialTransaccion):
        data = historial_transaccion_db.__dict__.copy()
        data["fecha"] = historial_transaccion_db.fecha_cambio
        data["transaccion"] = {
            "id_transaccion": historial_transaccion_db.id_transaccion,
            # "fecha_creacion": historial_transaccion_db.transaccion.fecha_creacion,
        }
        # data["usuario"] = {
        #     "id_usuario": historial_transaccion_db.usuario.id_usuario,
        #     "nombre": historial_transaccion_db.usuario.nombre,
        #     "apellido": historial_transaccion_db.usuario.apellido,
        # }
        data["estado"] = {
            "id_estado_transaccion": historial_transaccion_db.estado.id_estado_transaccion,
            "nombre_estado": historial_transaccion_db.estado.nombre_estado_transaccion,
        }
        return cls.from_orm(data)
