from sqlalchemy import Column, ForeignKey, Integer, String

from app.core.database import DBBase


class Recurso(DBBase):
    """Modelo de Recurso."""
    __tablename__ = "recurso"
    id_recurso = Column(Integer, primary_key=True, autoincrement=True)
    # id_unidad = Column(Integer, ForeignKey("unidad.id_unidad"), nullable=False)
    id_tipo_recurso = Column(
        Integer, nullable=False
    )
    nombre_recurso = Column(String(100), nullable=False)
    descripcion_recurso = Column(String(100), nullable=False)
    estado_recurso = Column(String(100), unique=True, nullable=False)
    # foto_recurso = Column(String(255), nullable=True)