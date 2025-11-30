from sqlalchemy import Column, ForeignKey, Integer, String

from app.core.database import DBBase


class TipoUsuario(DBBase):
    """Modelo de TipoUsuario."""
    __tablename__ = "tipousuario"
    id_tipo_usuario = Column(Integer, primary_key=True)
    nombre_tipo_usuario = Column(String(100), nullable=False)
    descripcion_tipo_usuario = Column(String(500), nullable=False)
    