"""Pydantic schemas para Tipo Recurso."""

from typing import Optional

from pydantic import BaseModel, Field


class TipoRecursoBase(BaseModel):
    """Base schema para Tipo Recurso."""

    nombre_tipo_recurso: str = Field(
        ..., max_length=100, description="Nombre del tipo de recurso"
    )
    descripcion_tipo_recurso: str = Field(
        ..., max_length=255, description="Descripción del tipo de recurso"
    )
    # horario_disponibilidad: str = Field(..., description="Horario del tipo de recurso")
    # id_unidad: Optional[int] = Field(..., description="ID de la unidad")


class TipoRecursoCreate(TipoRecursoBase):
    """Schema para crear un nuevo Tipo Recurso."""


class TipoRecursoUpdate(BaseModel):
    """Schema para actualizar un Tipo Recurso."""

    nombre_tipo_recurso: Optional[str] = Field(
        ..., max_length=100, description="Nombre del tipo de recurso"
    )
    descripcion_tipo_recurso: Optional[str] = Field(
        ..., max_length=255, description="Descripción del tipo de recurso"
    )
    horario_disponibilidad: Optional[str] = Field(
        ..., description="Horario del tipo de recurso"
    )
    id_unidad: Optional[int] = Field(..., description="ID de la unidad")


class TipoRecursoResponse(TipoRecursoBase):
    """Schema para respuesta de Tipo Recurso."""

    id_tipo_recurso: int = Field(..., description="ID del tipo de recurso")

    model_config = {"from_attributes": True}
