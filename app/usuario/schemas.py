"""Pydantic schemas para Usuario."""

from typing import Optional

from pydantic import BaseModel, EmailStr, Field

from app.unidad.schemas import UnidadResponse


class UsuarioBase(BaseModel):
    """Base schema para Usuario."""

    id_unidad: int = Field(..., description="ID de la unidad")
    nombre: str = Field(..., max_length=100, description="Nombre del usuario")
    email: EmailStr = Field(..., description="Email del usuario")
    rol: str = Field(..., max_length=20, description="Rol del usuario")


class UsuarioCreate(UsuarioBase):
    """Schema para crear un nuevo Usuario."""

    pass


class UsuarioUpdate(BaseModel):
    """Schema para actualizar un Usuario."""

    id_unidad: Optional[int] = None
    nombre: Optional[str] = Field(None, max_length=100)
    email: Optional[EmailStr] = None
    rol: Optional[str] = Field(None, max_length=20)


class UsuarioResponse(UsuarioBase):
    """Schema para respuesta de Usuario."""

    id_usuario: int

    class Config:
        from_attributes = True


class UsuarioWithUnidad(UsuarioResponse):
    """Schema de Usuario con información de su Unidad."""

    unidad: UnidadResponse
