from sqlalchemy import Column, ForeignKey, Integer, String

from app.core.database import DBBase


class Unidad(DBBase):
    """Modelo de Unidad."""
    __tablename__ = "unidad"
    id_unidad = Column(Integer, primary_key=True, autoincrement=True)
    nombre_unidad = Column(String(100), nullable=False)
    horario_unidad = Column(String(100), nullable=False)
    