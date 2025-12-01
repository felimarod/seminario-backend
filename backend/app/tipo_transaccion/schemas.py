"""Pydantic schemas para TipoTransaccion."""

from typing import Optional

from pydantic import BaseModel, EmailStr, Field


class TipoTransaccionBase(BaseModel):
    """Base schema para TipoTransaccion."""
    nombre_tipo_transaccion: str = Field(..., max_length=100, description="nombre de la tipotransaccion")
    descripcion_tipo_transaccion: str = Field(..., max_length=500, description="descripcion del tipotransaccion")

class TipoTransaccionCreate(TipoTransaccionBase):
    """Schema para crear un nuevo TipoTransaccion."""

class TipoTransaccionUpdate(BaseModel):
    """Schema para actualizar un TipoTransaccion."""
    nombre_tipo_transaccion: Optional[str] = Field(default=None, max_length=100, description="nombre de la tipotransaccion")
    descripcion_tipo_transaccion: Optional[str] = Field(default=None, max_length=100, description="descripcion del tipotransaccion")


class TipoTransaccionResponse(TipoTransaccionBase):
    """Schema para respuesta de TipoTransaccion."""

    id_tipo_transaccion: int
    model_config = {"from_attributes": True}

