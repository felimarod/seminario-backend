from sqlalchemy import Column, ForeignKey, Integer, String, LargeBinary, text
from sqlalchemy.orm import relationship
from sqlalchemy.schema import FetchedValue
from app.core.database import DBBase


class HistorialTransaccion(DBBase):
    """Modelo de HistorialTransaccion."""
    __tablename__ = "historialtransaccion"
    id_transaccion = Column(Integer, ForeignKey("transaccion.id_transaccion"), primary_key=True)
    fecha_cambio = Column(String(100), nullable=False)
    estado_nuevo = Column(Integer, ForeignKey("estadotransaccion.id_estado_transaccion"), nullable=False)
        
    # Relaciones de historial transacciones
    estado = relationship("EstadoTransaccion", back_populates="historial")
    transaccion = relationship("Transaccion", back_populates="historial", order_by="HistorialTransaccion.fecha_cambio.desc()")