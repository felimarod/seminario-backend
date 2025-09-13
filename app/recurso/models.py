from sqlalchemy import Column, ForeignKey, Integer, String, Text
from sqlalchemy.orm import relationship

from app.core.database import DBBase


class Recurso(DBBase):
    __tablename__ = "recurso"
    id_recurso = Column(Integer, primary_key=True, autoincrement=True)
    id_tipo = Column(Integer, ForeignKey("tipo_recurso.id_tipo"), nullable=False)
    nombre = Column(String(100), nullable=False)
    foto = Column(String(255))
    caracteristicas = Column(Text)
    tipo = relationship("TipoRecurso", back_populates="recursos")
    reservas = relationship("Reserva", back_populates="recurso")
