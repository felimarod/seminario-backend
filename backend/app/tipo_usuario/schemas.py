"""Pydantic schemas para TipoUsuario."""

from typing import Optional

from pydantic import BaseModel, EmailStr, Field


class TipoUsuarioBase(BaseModel):
    """Base schema para TipoUsuario."""
    nombre_tipo_usuario: str = Field(..., max_length=100, description="nombre de la tipousuario")
    descripcion_tipo_usuario: str = Field(..., max_length=500, description="descripcion del tipousuario")

class TipoUsuarioCreate(TipoUsuarioBase):
    """Schema para crear un nuevo TipoUsuario."""

class TipoUsuarioUpdate(BaseModel):
    """Schema para actualizar un TipoUsuario."""
    nombre_tipo_usuario: Optional[str] = Field(default=None, max_length=100, description="nombre de la tipousuario")
    descripcion_tipo_usuario: Optional[str] = Field(default=None, max_length=100, description="descripcion del tipousuario")


class TipoUsuarioResponse(TipoUsuarioBase):
    """Schema para respuesta de TipoUsuario."""

    id_tipo_usuario: int
    model_config = {"from_attributes": True}

