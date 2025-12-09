"""Pydantic schemas para Calificacion."""

import base64
from typing import Any, Dict, Optional

from pydantic import BaseModel, Field

from app.calificacion.models import Calificacion

class CalificacionBase(BaseModel):
    """Base schema para Calificacion."""

    # id_unidad: int = Field(..., description="ID de la unidad")
    cumplimiento_horarios: int = Field(..., description="Cumplimiento de horario del calificacion")
    calidad_servicio: int = Field(..., description="Calidad del servicio del calificacion")
    atencion_personal: int = Field(..., description="Atención personal del calificacion")
    id_transaccion: int = Field(..., description="ID de la transacción")

class CalificacionCreate(CalificacionBase):
    """Schema para crear un nuevo Calificacion."""

    pass

class CalificacionResponse(BaseModel):
    """Schema para respuesta de Calificacion."""

    id_calificacion: int
    notas: Dict[str, Any]
    transaccion: Dict[str, Any]
    model_config = {"from_attributes": True}

    @classmethod
    def from_calificacion_db(cls, calificacion_db: Calificacion):
        """Crear una instancia de CalificacionResponse desde un objeto ORM."""
        
        data = calificacion_db.__dict__.copy()
        data["id_calificacion"] = calificacion_db.id_calificacion
        data["notas"] = {
            "cumplimiento_horarios": calificacion_db.cumplimiento_horarios,
            "calidad_servicio": calificacion_db.calidad_servicio,
            "atencion_personal": calificacion_db.atencion_personal,
        }
        data["transaccion"] = {
            "id_transaccion": calificacion_db.transaccion.id_transaccion,
            "usuario": {
                "id_usuario": calificacion_db.transaccion.id_usuario,
                "nombre": calificacion_db.transaccion.usuario.nombre,
                "apellido": calificacion_db.transaccion.usuario.apellido,
            },
            "empleado": {
                "id_usuario": calificacion_db.transaccion.id_empleado_responsable,
                "nombre": calificacion_db.transaccion.empleado_responsable.nombre,
                "apellido": calificacion_db.transaccion.empleado_responsable.apellido,
            } if calificacion_db.transaccion.empleado_responsable else None,
            "recurso": {
                "id_recurso": calificacion_db.transaccion.id_recurso,
                "nombre_recurso": calificacion_db.transaccion.recurso.nombre_recurso,
                "foto_recurso": base64.b64encode(calificacion_db.transaccion.recurso.foto_recurso).decode("utf-8") if calificacion_db.transaccion.recurso.foto_recurso else None
            }
        }
        return cls.from_orm(data)
