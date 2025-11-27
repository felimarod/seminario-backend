"""Pydantic schemas para Usuario."""

from typing import Optional

from pydantic import BaseModel, EmailStr, Field


class UsuarioBase(BaseModel):
    """Base schema para Usuario."""

    # id_unidad: int = Field(..., description="ID de la unidad")
    nombre: str = Field(..., max_length=100, description="Nombre del usuario")
    apellido: str = Field(..., max_length=100, description="Apellido del usuario")
    correo: EmailStr = Field(..., description="Email del usuario")
    id_tipo_usuario: int = Field(..., description="ID de la unidad")
    id_unidad: Optional[int] = Field(..., description="ID de la unidad")


class UsuarioCreate(UsuarioBase):
    """Schema para crear un nuevo Usuario."""

    contrasena: str = Field(..., max_length=100, description="Contraseña del usuario")


class UsuarioUpdate(BaseModel):
    """Schema para actualizar un Usuario."""

    nombre: Optional[str] = Field(..., max_length=100, description="Nombre del usuario")
    apellido: Optional[str] = Field(..., max_length=100, description="Apellido del usuario")
    correo: Optional[EmailStr] = Field(..., description="Email del usuario")
    id_tipo_usuario: Optional[int] = Field(..., description="ID de la unidad")
    id_unidad: Optional[int] = Field(..., description="ID de la unidad")


class UsuarioResponse(UsuarioBase):
    """Schema para respuesta de Usuario."""

    id_usuario: int

    model_config = {"from_attributes": True}

