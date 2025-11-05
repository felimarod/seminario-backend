from sqlalchemy import Column, ForeignKey, Integer, String

from app.core.database import DBBase


class Transaccion(DBBase):
    """Modelo de Transaccion."""
    __tablename__ = "transaccion"
    id_transaccion = Column(Integer, primary_key=True, autoincrement=True)
    #fecha_inicio = Column(String(100),  nullable=False)
    #fecha_fin = Column(String(100), nullable=False)
    estado_transaccion = Column(String(100), nullable=False)
    falla_servicio = Column(String(255), nullable=True)
    id_tipo_transaccion = Column(Integer, nullable=False)
    id_usuario = Column(Integer, nullable=False)
    id_recurso = Column(Integer, nullable=False)
    # tipo_transaccion = relationship("TipoTransaccion", back_populates="transaccions")
