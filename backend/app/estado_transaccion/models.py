from sqlalchemy import Column, ForeignKey, Integer, String, LargeBinary, text
from sqlalchemy.orm import relationship
from app.core.database import DBBase


class EstadoTransaccion(DBBase):
    """Modelo de EstadoTransaccion."""
    __tablename__ = "estadotransaccion"
    id_estado_transaccion = Column(Integer, primary_key=True)
    nombre_estado_transaccion = Column(String(100), nullable=False)
        
    # Relación con historial de transacciones
    historial = relationship("HistorialTransaccion", back_populates="estadotransaccion")