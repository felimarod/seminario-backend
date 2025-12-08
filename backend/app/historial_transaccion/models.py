from sqlalchemy import Column, ForeignKey, Integer, String, LargeBinary, text, DateTime
from sqlalchemy.orm import relationship
from sqlalchemy.schema import FetchedValue
from app.core.database import DBBase

class HistorialTransaccion(DBBase):
    """Modelo de HistorialTransaccion."""
    __tablename__ = "historialtransaccion"
    id_transaccion = Column(Integer, ForeignKey("transaccion.id_transaccion"), primary_key=True)
    fecha_cambio = Column(DateTime, primary_key=True,
        server_default=text("NULL"),     # Force SQLA to send INSERT without PK
        server_onupdate=FetchedValue())
    estado_nuevo = Column(Integer, ForeignKey("estadotransaccion.id_estado_transaccion"), nullable=False)
    usuario_responsable = Column(Integer, ForeignKey("usuario.id_usuario"), nullable=False)

    # Relaciones de historial transacciones
    usuario = relationship("Usuario", back_populates="historial", order_by="HistorialTransaccion.fecha_cambio.desc()")
    estado = relationship("EstadoTransaccion", back_populates="historial", order_by="HistorialTransaccion.fecha_cambio.desc()")
    transaccion = relationship("Transaccion", back_populates="historial", order_by="HistorialTransaccion.fecha_cambio.desc()")