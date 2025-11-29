"""Pydantic schemas para Horario."""

from typing import Optional
import base64
from pydantic import BaseModel, Field, field_validator
from datetime import timedelta


class HorarioBase(BaseModel):
    """Base schema para Horario."""
    id_horario: str = Field(..., max_length=100, description="Nombre del horario")

class HorarioCreate(HorarioBase):
    """Schema para crear un nuevo Horario."""
    pass


class HorarioUpdate(BaseModel):
    """Schema para actualizar un Horario."""
    id_horario: Optional[str] = Field(default=None, max_length=100, description="Nombre del horario")
    
class HorarioResponse(HorarioBase):
    """Schema para respuesta de Horario."""
    model_config = {"from_attributes": True}


class HorarioDetalleBase(BaseModel):
    """Base schema para Horario."""
    id_horario: str = Field(..., max_length=100, description="Nombre del horario")
    dia_semana: str = Field(..., max_length=20, description="dia del horario")
    hora_apertura: str = Field(..., max_length=10, description="Hora de inicio")
    hora_cierre: str = Field(..., max_length=10, description="Hora de cierre")

    @staticmethod
    def _timedelta_to_hhmm(value: timedelta | None):
        if value is None:
            return None
        total_seconds = int(value.total_seconds())
        hours = total_seconds // 3600
        minutes = (total_seconds % 3600) // 60
        return f"{hours:02d}:{minutes:02d}"

    @field_validator("hora_apertura", "hora_cierre", mode="before")
    def convert_td(cls, v):
        if isinstance(v, timedelta):
            return cls._timedelta_to_hhmm(v)
        return v

class HorarioDetalleCreate(HorarioBase):
    """Schema para crear un nuevo Horario."""
    pass

class HorarioDetalleUpdate(BaseModel):
    """Schema para actualizar un Horario."""
    hora_apertura: Optional[str] = Field(default=None, max_length=10, description="Hora de inicio")
    hora_cierre: Optional[str] = Field(default=None, max_length=10, description="Hora de cierre")
    
class HorarioDetalleResponse(HorarioBase):
    """Schema para respuesta de Horario."""
    model_config = {"from_attributes": True}