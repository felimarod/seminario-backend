"""Pydantic schemas para Recurso."""

from typing import Dict, Optional, Any
import base64
from pydantic import BaseModel, Field
from datetime import datetime, timedelta
from app.recurso.models import Recurso

class RecursoBase(BaseModel):
    """Base schema para Recurso."""

    nombre_recurso: str = Field(..., max_length=100, description="Nombre del recurso")
    descripcion_recurso: str = Field(..., max_length=500, description="Descripción del recurso")
    id_tipo_recurso: int = Field(..., description="ID del tipo de recurso")  

class RecursoCreate(RecursoBase):
    """Schema para crear un nuevo Recurso."""
    pass


class RecursoUpdate(BaseModel):
    """Schema para actualizar un Recurso."""

    nombre_recurso: Optional[str] = Field(default=None, max_length=100, description="Nombre del recurso")
    descripcion_recurso: Optional[str] = Field(default=None, max_length=100, description="Descripción del recurso")
    id_tipo_recurso: Optional[int] = Field(default=None, description="ID del tipo de recurso")


class RecursoResponse(BaseModel):
    """Schema para respuesta de Recurso."""

    recurso: Dict[str,Any]
    tipo: Dict[str,Any]
    unidad: Dict[str,Any]
    foto_recurso: Optional[str]
    model_config = {"from_attributes": True}

    @classmethod
    def from_recurso_db(cls, recurso_db: Recurso):
        data = recurso_db.__dict__.copy()
        data["recurso"] = {
            "id_recurso": recurso_db.id_recurso,
            "nombre_recurso": recurso_db.nombre_recurso,
            "descripcion_recurso": recurso_db.descripcion_recurso
        }
        data["tipo"] = {"id": recurso_db.tipo_recurso.id_tipo_recurso, 
                        "nombre": recurso_db.tipo_recurso.nombre_tipo_recurso,}
        data["unidad"] = {"id": recurso_db.tipo_recurso.unidad.id_unidad, 
                          "nombre": recurso_db.tipo_recurso.unidad.nombre_unidad}
        
        if recurso_db.foto_recurso:
            # data["foto_recurso"] = base64.b64encode(recurso_db.foto_recurso).decode("utf-8")
            data["foto_recurso"]="incluye imagen"
        else:
            data["foto_recurso"] = None

        return cls.from_orm(data)

class Filtros(BaseModel):
    """Schema para respuesta de Tipo Recurso."""
    id_tipo_recurso: Optional[int] = Field(default=None, description="ID del tipo de recurso")
    id_unidad: Optional[int] = Field(default=None, description="ID de la unidad")
    ventana_tiempo_inicio: Optional[datetime] = Field(default=datetime.now().date(), description="inicio de ventana temporal")
    ventana_tiempo_fin: Optional[datetime] = Field(default=datetime.now().date()+timedelta(days=1), description="fin de ventana temporal")
    disponibilidad_completa: Optional[bool] = Field(default=False, description="Indica si se requiere disponibilidad completa o parcial en la ventana temporal")