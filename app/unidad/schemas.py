"""Pydantic schemas para Unidad."""

from typing import Optional

from pydantic import BaseModel, Field


class UnidadBase(BaseModel):
    """Base schema para Unidad."""

    nombre: str = Field(..., max_length=100, description="Nombre de la unidad")
    descripcion: Optional[str] = Field(None, description="Descripción de la unidad")
    horario_general: Optional[str] = Field(None, description="Horario general")
    tiempo_min_prestamo: str = Field(
        ..., max_length=20, description="Tiempo mínimo de préstamo"
    )


class UnidadCreate(UnidadBase):
    """Schema para crear una nueva Unidad."""

    pass


class UnidadUpdate(BaseModel):
    """Schema para actualizar una Unidad."""

    nombre: Optional[str] = Field(None, max_length=100)
    descripcion: Optional[str] = None
    horario_general: Optional[str] = None
    tiempo_min_prestamo: Optional[str] = Field(None, max_length=20)


class UnidadResponse(UnidadBase):
    """Schema para respuesta de Unidad."""

    id_unidad: int

    class Config:
        from_attributes = True
