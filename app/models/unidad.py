from sqlalchemy import Column, Integer, String, Text
from sqlalchemy.orm import relationship
from .base import Base

class Unidad(Base):
    __tablename__ = "unidad"
    id_unidad = Column(Integer, primary_key=True, autoincrement=True)
    nombre = Column(String(100), nullable=False)
    descripcion = Column(Text)
    horario_general = Column(Text)
    tiempo_min_prestamo = Column(String(20), nullable=False)
    tipos_recurso = relationship("TipoRecurso", back_populates="unidad")
    usuarios = relationship("Usuario", back_populates="unidad")
