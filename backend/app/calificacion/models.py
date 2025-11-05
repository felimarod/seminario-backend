from sqlalchemy import Column, ForeignKey, Integer, String

from app.core.database import DBBase


class Calificacion(DBBase):
    """Modelo de Calificacion."""
    __tablename__ = "calificacion"
    id_calificacion = Column(Integer, primary_key=True, autoincrement=True)
    cumplimiento_horarios = Column(Integer, nullable=False)
    calidad_servicio = Column(Integer, nullable=False)
    atencion_personal = Column(Integer, nullable=False)
    id_transaccion = Column(Integer, nullable=False)
