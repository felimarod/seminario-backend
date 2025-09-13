"""Pydantic schemas para Calificacion."""

from typing import Optional

from pydantic import BaseModel, Field


class CalificacionBase(BaseModel):
    """Base schema para Calificacion."""

    id_reserva: int = Field(..., description="ID de la reserva")
    cumplimiento: Optional[int] = Field(
        None, ge=1, le=5, description="Calificación de cumplimiento (1-5)"
    )
    calidad_recurso: Optional[int] = Field(
        None, ge=1, le=5, description="Calificación de calidad (1-5)"
    )
    amabilidad: Optional[int] = Field(
        None, ge=1, le=5, description="Calificación de amabilidad (1-5)"
    )


class CalificacionCreate(CalificacionBase):
    """Schema para crear una nueva Calificacion."""

    pass


class CalificacionUpdate(BaseModel):
    """Schema para actualizar una Calificacion."""

    id_reserva: Optional[int] = None
    cumplimiento: Optional[int] = Field(None, ge=1, le=5)
    calidad_recurso: Optional[int] = Field(None, ge=1, le=5)
    amabilidad: Optional[int] = Field(None, ge=1, le=5)


class CalificacionResponse(CalificacionBase):
    """Schema para respuesta de Calificacion."""

    id_calificacion: int

    class Config:
        from_attributes = True
