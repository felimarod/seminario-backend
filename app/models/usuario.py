from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import relationship
from .base import Base

class Usuario(Base):
    __tablename__ = "usuario"
    id_usuario = Column(Integer, primary_key=True, autoincrement=True)
    id_unidad = Column(Integer, ForeignKey("unidad.id_unidad"), nullable=False)
    nombre = Column(String(100), nullable=False)
    email = Column(String(100), unique=True, nullable=False)
    rol = Column(String(20), nullable=False)
    reservas = relationship("Reserva", back_populates="usuario")
    unidad = relationship("Unidad", back_populates="usuarios")