"""Pydantic schemas para Transaccion."""

from typing import Optional

from pydantic import BaseModel, EmailStr, Field


class TransaccionBase(BaseModel):
    """Base schema para Transaccion."""

    # id_unidad: int = Field(..., description="ID de la unidad")
    # id_transaccion: str = Field(..., max_length=100, description="ID de la transaccion")
    estado_transaccion: str = Field(..., max_length=100, description="Estado de la transaccion")
    falla_servicio: str = Field(..., max_length=255, description="Falla del servicio")
    id_tipo_transaccion: int = Field(..., description="ID del tipo de transaccion")
    id_usuario: int = Field(..., description="ID del usuario")
    id_recurso: int = Field(..., description="ID del recurso")


class TransaccionCreate(TransaccionBase):
    """Schema para crear un nuevo Transaccion."""

    pass


class TransaccionUpdate(BaseModel):
    """Schema para actualizar un Transaccion."""

    # id_transaccion: Optional[str] = Field(..., max_length=100, description="ID de la transaccion")
    estado_transaccion: Optional[str] = Field(..., max_length=100, description="Estado de la transaccion")
    falla_servicio: Optional[str] = Field(..., max_length=255, description="Falla del servicio")
    id_tipo_transaccion: Optional[int] = Field(..., description="ID del tipo de transaccion")
    id_usuario: Optional[int] = Field(..., description="ID del usuario")
    id_recurso: Optional[int] = Field(..., description="ID del recurso")


class TransaccionResponse(TransaccionBase):
    """Schema para respuesta de Transaccion."""

    id_transaccion: int

    model_config = {"from_attributes": True}

