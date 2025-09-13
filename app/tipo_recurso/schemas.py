"""Pydantic schemas para TipoRecurso."""

from typing import Optional

from pydantic import BaseModel, Field


class TipoRecursoBase(BaseModel):
    """Base schema para TipoRecurso."""

    id_unidad: int = Field(..., description="ID de la unidad")
    identificador: str = Field(..., max_length=50, description="Identificador del tipo")
    nombre: str = Field(..., max_length=100, description="Nombre del tipo")
    descripcion: Optional[str] = Field(None, description="Descripción")
    horario_disponibilidad: str = Field(..., description="Horario de disponibilidad")


class TipoRecursoCreate(TipoRecursoBase):
    """Schema para crear un nuevo TipoRecurso."""

    pass


class TipoRecursoUpdate(BaseModel):
    """Schema para actualizar un TipoRecurso."""

    identificador: Optional[str] = Field(None, max_length=50)
    nombre: Optional[str] = Field(None, max_length=100)
    descripcion: Optional[str] = None
    horario_disponibilidad: Optional[str] = None


class TipoRecursoResponse(TipoRecursoBase):
    """Schema para respuesta de TipoRecurso."""

    id_tipo: int

    class Config:
        from_attributes = True
