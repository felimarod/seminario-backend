"""Pydantic schemas para Tipo Recurso."""

from typing import Optional

from pydantic import BaseModel, Field


class TipoRecursoBase(BaseModel):
    """Base schema para Tipo Recurso."""

    nombre_tipo_recurso: str = Field(
        ..., max_length=100, description="Nombre del tipo de recurso"
    )
    codigo_tipo_recurso: str = Field(
        ..., max_length=255, description="Descripción del tipo de recurso"
    )
    descripcion_tipo_recurso: Optional[str] = Field(
        default=None, max_length=255, description="Descripción del tipo de recurso"
    )
    horario_disponibilidad: Optional[str] = Field(
        default=None, description="Horario del tipo de recurso"
    )

class TipoRecursoCreate(TipoRecursoBase):
    """Schema para crear un nuevo Tipo Recurso."""    
    granuralidad_disponibilidad: Optional[int] = Field(default=None,gt=0 , description="Tiempo minimo (en minutos) de peticion del tipo de recurso")
    id_unidad: Optional[int] = Field(default=None, description="ID de la unidad")


class TipoRecursoUpdate(BaseModel):
    """Schema para actualizar un Tipo Recurso."""

    nombre_tipo_recurso: Optional[str] = Field(
        default=None, max_length=100, description="Nombre del tipo de recurso"
    )
    codigo_tipo_recurso: Optional[str] = Field(
        default=None, max_length=255, description="Descripción del tipo de recurso"
    )
    descripcion_tipo_recurso: Optional[str] = Field(
        default=None, max_length=255, description="Descripción del tipo de recurso"
    )
    horario_disponibilidad: Optional[str] = Field(
        default=None, description="Horario del tipo de recurso"
    )
    id_unidad: Optional[int] = Field(
        default=None, description="ID de la unidad"
    )


class TipoRecursoResponse(TipoRecursoBase):
    """Schema para respuesta de Tipo Recurso."""

    id_tipo_recurso: int
    id_unidad: int
    unidad: str
    model_config = {"from_attributes": True}

class Filtros(BaseModel):
    """Schema para respuesta de Tipo Recurso."""

    horario_disponibilidad: Optional[str] = Field(
        default=None, description="Horario del tipo de recurso"
    )
    id_unidad: Optional[int] = Field(
        default=None, description="ID de la unidad"
    )
