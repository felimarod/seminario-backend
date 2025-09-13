from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from app.core.database import DBBase


class Usuario(DBBase):
    __tablename__ = "usuario"
    id_usuario = Column(Integer, primary_key=True, autoincrement=True)
    id_unidad = Column(Integer, ForeignKey("unidad.id_unidad"), nullable=False)
    nombre = Column(String(100), nullable=False)
    email = Column(String(100), unique=True, nullable=False)
    rol = Column(String(20), nullable=False)
    reservas = relationship("Reserva", back_populates="usuario")
    unidad = relationship("Unidad", back_populates="usuarios")
