"""Pydantic schemas para Unidad."""

from typing import Optional

from pydantic import BaseModel, EmailStr, Field


class UnidadBase(BaseModel):
    """Base schema para Unidad."""
    nombre_unidad: str = Field(..., max_length=100, description="nombre de la unidad")
    horario_unidad: str = Field(..., max_length=100, description="horario de atencion de la unidad")

class UnidadCreate(UnidadBase):
    """Schema para crear un nuevo Unidad."""

class UnidadUpdate(BaseModel):
    """Schema para actualizar un Unidad."""
    nombre_unidad: Optional[str] = Field(..., max_length=100, description="nombre de la unidad")
    horario_unidad: Optional[str] = Field(..., max_length=100, description="horario de atencion de la unidad")


class UnidadResponse(UnidadBase):
    """Schema para respuesta de Unidad."""

    id_unidad: int
    model_config = {"from_attributes": True}

