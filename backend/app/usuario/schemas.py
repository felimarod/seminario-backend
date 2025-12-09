"""Pydantic schemas para Usuario."""

from typing import Any, Dict, Optional

from pydantic import BaseModel, EmailStr, Field

from app.usuario.models import Usuario

class UsuarioCreateBase(BaseModel):
    """Base schema para Usuario."""

    # id_unidad: int = Field(..., description="ID de la unidad")
    nombre: str = Field(..., max_length=100, description="Nombre del usuario")
    apellido: str = Field(..., max_length=100, description="Apellido del usuario")
    correo: EmailStr = Field(..., description="Email del usuario")
    contrasena: str = Field(..., max_length=100, description="Contraseña del usuario")
    


class UsuarioCreate(UsuarioCreateBase):
    """Schema para crear un nuevo Usuario."""
    
    id_tipo_usuario: Optional[int] = Field(..., description="ID de la unidad")
    id_unidad: Optional[int] = Field(..., description="ID de la unidad")

class UsuarioUpdate(BaseModel):
    """Schema para actualizar un Usuario."""

    nombre: Optional[str] = Field(..., max_length=100, description="Nombre del usuario")
    apellido: Optional[str] = Field(..., max_length=100, description="Apellido del usuario")
    correo: Optional[EmailStr] = Field(..., description="Email del usuario")
    id_tipo_usuario: Optional[int] = Field(..., description="ID de la unidad")
    id_unidad: Optional[int] = Field(..., description="ID de la unidad")


class UsuarioResponse(BaseModel):
    """Schema para respuesta de Usuario."""

    usuario: Dict[str,Any]
    unidad: Optional[Dict[str,Any]] = None
    tipo: Dict[str,Any]
    model_config = {"from_attributes": True}

    @classmethod
    def from_usuario_db(cls, usuario_db: Usuario):
        """Crea un UsuarioResponse a partir de un modelo de base de datos Usuario."""
        data = usuario_db.__dict__.copy()
        data["usuario"] = {
            "id_usuario": usuario_db.id_usuario,
            "nombre": usuario_db.nombre,
            "apellido": usuario_db.apellido,
            "correo": usuario_db.correo,
        }
        data["tipo"] = {
            "id_tipo_usuario": usuario_db.tipo_usuario.id_tipo_usuario,
            "nombre_tipo_usuario": usuario_db.tipo_usuario.nombre_tipo_usuario
        }
        if usuario_db.unidad:
            data["unidad"] = {
                "id_unidad": usuario_db.unidad.id_unidad,
                "nombre_unidad": usuario_db.unidad.nombre_unidad
            }
        return cls.from_orm(data)
