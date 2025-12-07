"""Pydantic schemas para Tipo Recurso."""

from typing import Optional, Dict, Any

from pydantic import BaseModel, Field

from app.tipo_recurso.models import TipoRecurso


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


class TipoRecursoResponse(BaseModel):
    """Schema para respuesta de Tipo Recurso."""

    tipo_recurso: Dict[str,Any]
    unidad: Dict[str,Any]
    horario: str
    model_config = {"from_attributes": True}

    @classmethod
    def from_tipo_recurso_db(cls, tipo_recurso_db: TipoRecurso):
        data = tipo_recurso_db.__dict__.copy()
        data["tipo_recurso"] = {
            "id_tipo_recurso": tipo_recurso_db.id_tipo_recurso,
            "nombre_tipo_recurso": tipo_recurso_db.nombre_tipo_recurso,
            "codigo_tipo_recurso": tipo_recurso_db.codigo_tipo_recurso,
        }
        data["unidad"] = {
            "id_unidad": tipo_recurso_db.unidad.id_unidad,
            "nombre_unidad": tipo_recurso_db.unidad.nombre_unidad
        }
        data["horario"] = tipo_recurso_db.horario_disponibilidad.id_horario
        return cls.from_orm(data)

class Filtros(BaseModel):
    """Schema para respuesta de Tipo Recurso."""

    horario_disponibilidad: Optional[str] = Field(
        default=None, description="Horario del tipo de recurso"
    )
    id_unidad: Optional[int] = Field(
        default=None, description="ID de la unidad"
    )
