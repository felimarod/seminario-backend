"""Pydantic schemas para Devolucion."""

from datetime import datetime
from typing import Optional

from pydantic import BaseModel, Field


class DevolucionBase(BaseModel):
    """Base schema para Devolucion."""

    id_prestamo: int = Field(..., description="ID del préstamo")
    hora_devolucion: datetime = Field(..., description="Hora de devolución")
    id_empleado_recibe: int = Field(..., description="ID del empleado que recibe")
    fallo_servicio: bool = Field(default=False, description="Fallo de servicio")


class DevolucionCreate(DevolucionBase):
    """Schema para crear una nueva Devolucion."""

    pass


class DevolucionUpdate(BaseModel):
    """Schema para actualizar una Devolucion."""

    id_prestamo: Optional[int] = None
    hora_devolucion: Optional[datetime] = None
    id_empleado_recibe: Optional[int] = None
    fallo_servicio: Optional[bool] = None


class DevolucionResponse(DevolucionBase):
    """Schema para respuesta de Devolucion."""

    id_devolucion: int

    class Config:
        from_attributes = True
