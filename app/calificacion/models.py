from sqlalchemy import Column, ForeignKey, Integer
from sqlalchemy.orm import relationship

from app.core.database import DBBase


class Calificacion(DBBase):
    __tablename__ = "calificacion"
    id_calificacion = Column(Integer, primary_key=True, autoincrement=True)
    id_reserva = Column(Integer, ForeignKey("reserva.id_reserva"), nullable=False)
    cumplimiento = Column(Integer)
    calidad_recurso = Column(Integer)
    amabilidad = Column(Integer)
    reserva = relationship("Reserva", back_populates="calificacion")
