from sqlalchemy import Column, Integer, TIMESTAMP, Boolean, ForeignKey
from sqlalchemy.orm import relationship
from .base import Base

class Prestamo(Base):
    __tablename__ = "prestamo"
    id_prestamo = Column(Integer, primary_key=True, autoincrement=True)
    id_reserva = Column(Integer, ForeignKey("reserva.id_reserva"), nullable=False)
    hora_entrega = Column(TIMESTAMP, nullable=False)
    id_empleado_entrega = Column(Integer, ForeignKey("usuario.id_usuario"), nullable=False)
    fallo_servicio = Column(Boolean, default=False)
    reserva = relationship("Reserva", back_populates="prestamo")
