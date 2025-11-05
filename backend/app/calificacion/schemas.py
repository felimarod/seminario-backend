"""Pydantic schemas para Calificacion."""

from typing import Optional

from pydantic import BaseModel, Field


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


class CalificacionUpdate(BaseModel):
    """Schema para actualizar un Calificacion."""

    cumplimiento_horarios: Optional[int] = Field(..., description="Cumplimiento de horario del calificacion")
    calidad_servicio: Optional[int] = Field(..., description="Calidad del servicio del calificacion")
    atencion_personal: Optional[int] = Field(..., description="Atención personal del calificacion")
    id_transaccion: Optional[int] = Field(..., description="ID de la transacción")


class CalificacionResponse(CalificacionBase):
    """Schema para respuesta de Calificacion."""

    id_calificacion: int

    model_config = {"from_attributes": True}

