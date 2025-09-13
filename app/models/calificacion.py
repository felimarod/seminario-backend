from sqlalchemy import Column, Integer, ForeignKey
from sqlalchemy.orm import relationship
from .base import Base

class Calificacion(Base):
    __tablename__ = "calificacion"
    id_calificacion = Column(Integer, primary_key=True, autoincrement=True)
    id_reserva = Column(Integer, ForeignKey("reserva.id_reserva"), nullable=False)
    cumplimiento = Column(Integer)
    calidad_recurso = Column(Integer)
    amabilidad = Column(Integer)
    reserva = relationship("Reserva", back_populates="calificacion")
