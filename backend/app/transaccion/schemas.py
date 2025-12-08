"""Pydantic schemas para Transaccion."""

from typing import List, Optional, Dict, Any, Tuple

from pydantic import BaseModel, Field
from datetime import datetime

from app.transaccion.models import Transaccion

class TransaccionBase(BaseModel):
    """Base schema para Transaccion."""
    fecha_inicio_transaccion: Optional[datetime] = Field(None, description="fecha y hora de inicio en formato AAAA-MM-DD HH:MM")
    fecha_fin_transaccion: datetime = Field(..., description="fecha y hora de finalización en formato AAAA-MM-DD HH:MM")
    falla_servicio: Optional[str] = Field(default=None, description="comentarios de falla en el servicio")
    


class TransaccionCreate(TransaccionBase):
    """Schema para crear un nuevo Transaccion."""
    id_usuario: Optional[int] = Field(default=None, description="id del usuario que solicita el recurso")
    id_recurso: str = Field(..., description="id del recurso solicitado")
    id_empleado_responsable: Optional[int] = Field(default=None, description="id del empleado que da/recibe el recurso")
    fecha_inicio_transaccion: datetime = Field(..., description="fecha y hora de inicio en formato AAAA-MM-DD HH:MM")
    fecha_fin_transaccion: datetime = Field(..., description="fecha y hora de finalización en formato AAAA-MM-DD HH:MM")
    

class TransaccionUpdate(BaseModel):
    """Schema para actualizar un Transaccion."""

    fecha_inicio_transaccion: Optional[datetime] = Field(default=None, description="fecha y hora de inicio en formato AAAA-MM-DD HH:MM")
    fecha_fin_transaccion: Optional[datetime] = Field(default=None, description="fecha y hora de finalización en formato AAAA-MM-DD HH:MM")
    estado_transaccion: Optional[str] = Field(default=None, description="estado de la transaccion")
    falla_servicio: Optional[str] = Field(default=None, description="comentarios de falla en el servicio")
    id_usuario: Optional[int] = Field(default=None, description="id del usuario que solicita el recurso")
    id_recurso: Optional[str] = Field(default=None, description="id del recurso solicitado")
    id_empleado_responsable: Optional[int] = Field(default=None, description="id del empleado que da/recibe el recurso")


class TransaccionResponse(BaseModel):
    """Schema para respuesta de Transaccion."""

    transaccion:int
    estado_actual: Dict[str,Any]
    fechas: Dict[str,datetime]   
    recurso: Dict[str,Any]
    usuario: Dict[str,Any]
    empleado_responsable: Optional[Dict[str,Any]] = None
    falla_servicio: Optional[str] = Field(default=None, description="comentarios de falla en el servicio")
    model_config = {"from_attributes": True}

    @classmethod
    def from_transaccion_db(cls, transaccion_db: Transaccion):
        data = transaccion_db.__dict__.copy()
        data["transaccion"] = transaccion_db.id_transaccion
        estado = sorted(
                transaccion_db.historial, 
                key=lambda h: h.fecha_cambio, 
                reverse=True
            )[0].estado
        data["estado_actual"] = {
            "id_estado_transaccion": estado.id_estado_transaccion,
            "nombre_estado_transaccion": estado.nombre_estado_transaccion
        }
        data["fechas"] = {
            "fecha_inicio_transaccion": transaccion_db.fecha_inicio_transaccion,
            "fecha_fin_transaccion": transaccion_db.fecha_fin_transaccion,
            "fecha_creacion": transaccion_db.fecha_creacion
        }
        data["recurso"] = {
            "id_recurso": transaccion_db.recurso.id_recurso,
            "nombre_recurso": transaccion_db.recurso.nombre_recurso
        }
        data["usuario"] = {
            "id_usuario": transaccion_db.usuario.id_usuario,
            "nombre": transaccion_db.usuario.nombre,
            "apellido": transaccion_db.usuario.apellido
        }
        if transaccion_db.empleado_responsable:
            data["empleado_responsable"] = {
                "id_usuario": transaccion_db.empleado_responsable.id_usuario,
                "nombre": transaccion_db.empleado_responsable.nombre,
                "apellido": transaccion_db.empleado_responsable.apellido,
            }
        data["falla_servicio"] = transaccion_db.falla_servicio
        return cls.from_orm(data)

class Filtros(BaseModel):
    """Schema para respuesta de Transaccion."""

    ventana_tiempo_inicio: Optional[datetime] = Field(default=None, description="inicio de ventana temporal en formato AAAA-MM-DD HH:MM")
    ventana_tiempo_fin: Optional[datetime] = Field(default=None, description="fin de ventana temporal en formato AAAA-MM-DD HH:MM")
    ventana_atributo: Optional[str] = Field(default=None, description="atributo a buscar en la ventana de tiempo")
    id_usuario: Optional[int] = Field(default=None, description="id del usuario que solicita el recurso")
    id_recurso: Optional[str] = Field(default=None, description="id recurso del recurso solicitado")
    id_empleado_responsable: Optional[int] = Field(default=None, description="id del empleado que da/recibe el recurso")
    estado_transaccion: Optional[List[int]] = Field(default=None, description="listado de id del estado de la transaccion")

    id_tipo_recurso: Optional[int] = Field(default=None, description="id del tipo de recurso solicitado")
    id_unidad: Optional[int] = Field(default=None, description="id de la unidad al que pertence el recurso")
    