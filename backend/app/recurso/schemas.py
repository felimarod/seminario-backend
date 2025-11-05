"""Pydantic schemas para Recurso."""

from typing import Optional

from pydantic import BaseModel, Field


class RecursoBase(BaseModel):
    """Base schema para Recurso."""

    nombre_recurso: str = Field(..., max_length=100, description="Nombre del recurso")
    descripcion_recurso: str = Field(..., max_length=100, description="Descripción del recurso")
    estado_recurso: str = Field(..., description="Estado del recurso")
    id_tipo_recurso: int = Field(..., description="ID del tipo de recurso")


class RecursoCreate(RecursoBase):
    """Schema para crear un nuevo Recurso."""

    pass


class RecursoUpdate(BaseModel):
    """Schema para actualizar un Recurso."""

    nombre_recurso: Optional[str] = Field(..., max_length=100, description="Nombre del recurso")
    descripcion_recurso: Optional[str] = Field(..., max_length=100, description="Descripción del recurso")
    estado_recurso: Optional[str] = Field(..., description="Estado del recurso")
    id_tipo_recurso: Optional[int] = Field(..., description="ID del tipo de recurso")


class RecursoResponse(RecursoBase):
    """Schema para respuesta de Recurso."""

    id_recurso: int

    model_config = {"from_attributes": True}

