from sqlalchemy import Column, ForeignKey, Integer, String

from app.core.database import DBBase


class TipoTransaccion(DBBase):
    """Modelo de TipoTransaccion."""
    __tablename__ = "tipotransaccion"
    id_tipo_transaccion = Column(Integer, primary_key=True)
    nombre_tipo_transaccion = Column(String(100), nullable=False)
    descripcion_tipo_transaccion = Column(String(500), nullable=False)
    