"""Pydantic schemas para Recurso."""

from typing import Optional

from pydantic import BaseModel, Field

from app.tipo_recurso.schemas import TipoRecursoResponse


class RecursoBase(BaseModel):
    """Base schema para Recurso."""

    id_tipo: int = Field(..., description="ID del tipo de recurso")
    nombre: str = Field(..., max_length=100, description="Nombre del recurso")
    foto: Optional[str] = Field(None, max_length=255, description="URL de foto")
    caracteristicas: Optional[str] = Field(
        None, description="Características del recurso"
    )


class RecursoCreate(RecursoBase):
    """Schema para crear un nuevo Recurso."""

    pass


class RecursoUpdate(BaseModel):
    """Schema para actualizar un Recurso."""

    id_tipo: Optional[int] = None
    nombre: Optional[str] = Field(None, max_length=100)
    foto: Optional[str] = Field(None, max_length=255)
    caracteristicas: Optional[str] = None


class RecursoResponse(RecursoBase):
    """Schema para respuesta de Recurso."""

    id_recurso: int

    class Config:
        from_attributes = True


class RecursoWithTipo(RecursoResponse):
    """Schema de Recurso con información de su Tipo."""

    tipo: TipoRecursoResponse
