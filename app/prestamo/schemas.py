"""Pydantic schemas para Prestamo."""

from datetime import datetime
from typing import Optional

from pydantic import BaseModel, Field


class PrestamoBase(BaseModel):
    """Base schema para Prestamo."""

    id_reserva: int = Field(..., description="ID de la reserva")
    hora_entrega: datetime = Field(..., description="Hora de entrega")
    id_empleado_entrega: int = Field(..., description="ID del empleado que entrega")
    fallo_servicio: bool = Field(default=False, description="Fallo de servicio")


class PrestamoCreate(PrestamoBase):
    """Schema para crear un nuevo Prestamo."""

    pass


class PrestamoUpdate(BaseModel):
    """Schema para actualizar un Prestamo."""

    id_reserva: Optional[int] = None
    hora_entrega: Optional[datetime] = None
    id_empleado_entrega: Optional[int] = None
    fallo_servicio: Optional[bool] = None


class PrestamoResponse(PrestamoBase):
    """Schema para respuesta de Prestamo."""

    id_prestamo: int

    class Config:
        from_attributes = True
