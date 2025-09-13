from sqlalchemy import Column, Integer, String, Date, DateTime, ForeignKey
from sqlalchemy.orm import relationship
from .base import Base

class Reserva(Base):
    __tablename__ = "reserva"
    id_reserva = Column(Integer, primary_key=True, autoincrement=True)
    id_recurso = Column(Integer, ForeignKey("recurso.id_recurso"), nullable=False)
    id_usuario = Column(Integer, ForeignKey("usuario.id_usuario"), nullable=False)
    fecha = Column(Date, nullable=False)
    hora_inicio = Column(DateTime, nullable=False)
    hora_fin = Column(DateTime, nullable=False)
    estado = Column(String(20), nullable=False)
    recurso = relationship("Recurso", back_populates="reservas")
    usuario = relationship("Usuario", back_populates="reservas")
    prestamo = relationship("Prestamo", back_populates="reserva", uselist=False)
    calificacion = relationship("Calificacion", back_populates="reserva", uselist=False)
