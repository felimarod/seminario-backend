from sqlalchemy import CheckConstraint, Column, ForeignKey, Integer, String, Text
from sqlalchemy.orm import relationship

from app.core.database import DBBase


class TipoRecurso(DBBase):
    __tablename__ = "tipo_recurso"
    id_tipo = Column(Integer, primary_key=True, autoincrement=True)
    id_unidad = Column(Integer, ForeignKey("unidad.id_unidad"), nullable=False)
    identificador = Column(String(50), nullable=False)
    nombre = Column(String(100), nullable=False)
    descripcion = Column(Text)
    horario_disponibilidad = Column(Text, nullable=False)
    unidad = relationship("Unidad", back_populates="tipos_recurso")
    recursos = relationship("Recurso", back_populates="tipo")
    __table_args__ = (CheckConstraint("nombre IS NOT NULL"),)
