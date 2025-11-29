from sqlalchemy import Column, String, Interval
from sqlalchemy.schema import FetchedValue
from app.core.database import DBBase


class Horario(DBBase):
    """Modelo de Horario."""
    __tablename__ = "horario"
    id_horario = Column(String(100), primary_key=True)

class HorarioDetalle(DBBase):
    """Modelo de Horario."""
    __tablename__ = "horariodetalle"
    id_horario = Column(String(100), primary_key=True)
    dia_semana = Column(String(20), primary_key=True)
    hora_apertura = Column(Interval, nullable=False)
    hora_cierre = Column(Interval, nullable=False)