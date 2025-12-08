from sqlalchemy import Column, ForeignKey, Integer, String, DateTime, func
from sqlalchemy.orm import relationship
from app.core.database import DBBase
from app.estado_transaccion.models import EstadoTransaccion


class Transaccion(DBBase):
    """Modelo de Transaccion."""
    __tablename__ = "transaccion"
    id_transaccion = Column(Integer, primary_key=True)

    fecha_inicio_transaccion = Column(DateTime(timezone=True), nullable=False)
    fecha_fin_transaccion = Column(DateTime(timezone=True), nullable=False)
    fecha_creacion = Column(DateTime(timezone=True), server_default=func.current_timestamp())    
    falla_servicio = Column(String(500), nullable=True)
    
    id_usuario = Column(Integer, ForeignKey("usuario.id_usuario"), nullable=False)
    id_recurso = Column(String(20), ForeignKey("recurso.id_recurso"), nullable=False)
    id_empleado_responsable = Column(Integer, ForeignKey("usuario.id_usuario"), nullable=True)
    
    # Relaciones
    recurso = relationship("Recurso")
    usuario = relationship("Usuario", foreign_keys=[id_usuario])
    empleado_responsable = relationship("Usuario", foreign_keys=[id_empleado_responsable])
    
    historial = relationship("HistorialTransaccion", back_populates="transaccion")
    calificaciones = relationship("Calificacion", back_populates="transaccion")

    def lastHistorial(self) -> EstadoTransaccion:
        """Obtiene el ultimo historial de la transaccion."""
        return sorted(
                self.historial, 
                key=lambda h: h.fecha_cambio, 
                reverse=True
            )[0].estado
    