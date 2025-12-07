from sqlalchemy import Column, String, Time, ForeignKey
from sqlalchemy.schema import FetchedValue
from sqlalchemy.orm import relationship
from app.core.database import DBBase


class Horario(DBBase):
    """Modelo de Horario."""
    __tablename__ = "horario"
    id_horario = Column(String(100), primary_key=True)

    horario_detalles = relationship("HorarioDetalle", back_populates="horario")

class HorarioDetalle(DBBase):
    """Modelo de Horario."""
    __tablename__ = "horariodetalle"
    id_horario = Column(String(100), ForeignKey("horario.id_horario"), primary_key=True)
    dia_semana = Column(String(20), primary_key=True)
    hora_apertura = Column(String(8), nullable=False)
    hora_cierre = Column(String(8), nullable=False)

    horario = relationship("Horario", back_populates="horario_detalles")