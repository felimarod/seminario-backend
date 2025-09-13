"""Pydantic schemas para Reserva."""

from datetime import date, datetime
from typing import Optional

from pydantic import BaseModel, Field

from app.recurso.schemas import RecursoResponse
from app.usuario.schemas import UsuarioResponse


class ReservaBase(BaseModel):
    """Base schema para Reserva."""

    id_recurso: int = Field(..., description="ID del recurso")
    id_usuario: int = Field(..., description="ID del usuario")
    fecha: date = Field(..., description="Fecha de la reserva")
    hora_inicio: datetime = Field(..., description="Hora de inicio")
    hora_fin: datetime = Field(..., description="Hora de fin")
    estado: str = Field(..., max_length=20, description="Estado de la reserva")


class ReservaCreate(ReservaBase):
    """Schema para crear una nueva Reserva."""

    pass


class ReservaUpdate(BaseModel):
    """Schema para actualizar una Reserva."""

    id_recurso: Optional[int] = None
    id_usuario: Optional[int] = None
    fecha: Optional[date] = None
    hora_inicio: Optional[datetime] = None
    hora_fin: Optional[datetime] = None
    estado: Optional[str] = Field(None, max_length=20)


class ReservaResponse(ReservaBase):
    """Schema para respuesta de Reserva."""

    id_reserva: int

    class Config:
        from_attributes = True


class ReservaDetallada(ReservaResponse):
    """Schema de Reserva con información detallada."""

    recurso: RecursoResponse
    usuario: UsuarioResponse
