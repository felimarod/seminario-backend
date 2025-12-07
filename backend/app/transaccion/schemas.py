"""Pydantic schemas para Transaccion."""

from typing import Optional, Dict, Any, Tuple

from pydantic import BaseModel, Field
from datetime import datetime


class TransaccionBase(BaseModel):
    """Base schema para Transaccion."""
    fecha_inicio_transaccion: datetime = Field(..., description="fecha y hora de inicio")
    fecha_fin_transaccion: datetime = Field(..., description="fecha y hora de finalización")
    estado_transaccion: str = Field(..., description="estado de la transaccion")
    falla_servicio: Optional[str] = Field(default=None, description="comentarios de falla en el servicio")
    


class TransaccionCreate(TransaccionBase):
    """Schema para crear un nuevo Transaccion."""
    id_tipo_transaccion: int = Field(..., description="tipo de transaccion (reserva o prestamo)")
    id_usuario: Optional[int] = Field(default=None, description="id del usuario que solicita el recurso")
    id_recurso: str = Field(..., description="id del recurso solicitado")
    id_empleado_responsable: Optional[int] = Field(default=None, description="id del empleado que da/recibe el recurso")
    fecha_inicio_transaccion: datetime = Field(default="AAAA-MM-DD HH:MM", description="fecha y hora de inicio")
    fecha_fin_transaccion: datetime = Field(default="AAAA-MM-DD HH:MM", description="fecha y hora de finalización")
    

class TransaccionUpdate(BaseModel):
    """Schema para actualizar un Transaccion."""

    echa_inicio_transaccion: Optional[datetime] = Field(default=None, description="fecha y hora de inicio")
    fecha_fin_transaccion: Optional[datetime] = Field(default=None, description="fecha y hora de finalización")
    estado_transaccion: Optional[str] = Field(default=None, description="estado de la transaccion")
    falla_servicio: Optional[str] = Field(default=None, description="comentarios de falla en el servicio")
    id_tipo_transaccion: Optional[int] = Field(default=None, description="tipo de transaccion (reserva o prestamo)")
    id_usuario: Optional[int] = Field(default=None, description="id del usuario que solicita el recurso")
    id_recurso: Optional[str] = Field(default=None, description="id del recurso solicitado")
    id_empleado_responsable: Optional[int] = Field(default=None, description="id del empleado que da/recibe el recurso")


class TransaccionResponse(TransaccionBase):
    """Schema para respuesta de Transaccion."""

    
    id_transaccion:int
    fecha_creacion:datetime
    tipo_transaccion: Dict[str,Any]
    usuario: Dict[str,Any]
    recurso: Dict[str,Any]
    empleado_responsable: Optional[Dict[str,Any]] = None
    model_config = {"from_attributes": True}

class Filtros(BaseModel):
    """Schema para respuesta de Transaccion."""

    ventana_tiempo_inicio: Optional[datetime] = Field(default=None, description="inicio de ventana temporal")
    ventana_tiempo_fin: Optional[datetime] = Field(default=None, description="fin de ventana temporal")
    ventana_atributo: Optional[str] = Field(default=None, description="atributo a buscar en la ventana de tiempo")
    id_tipo_transaccion: Optional[int] = Field(default=None, description="id tipo transacción")
    id_usuario: Optional[int] = Field(default=None, description="id del usuario que solicita el recurso")
    id_recurso: Optional[str] = Field(default=None, description="id recurso del recurso solicitado")
    id_empleado_responsable: Optional[int] = Field(default=None, description="id del empleado que da/recibe el recurso")
    
    id_tipo_recurso: Optional[int] = Field(default=None, description="id del tipo de recurso solicitado")
    id_unidad: Optional[int] = Field(default=None, description="id de la unidad al que pertence el recurso")
    