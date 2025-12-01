from sqlalchemy import Column, ForeignKey, Integer, String, DateTime, func

from app.core.database import DBBase


class Transaccion(DBBase):
    """Modelo de Transaccion."""
    __tablename__ = "transaccion"
    id_transaccion = Column(Integer, primary_key=True)
    fecha_inicio_transaccion = Column(DateTime(timezone=True), nullable=False)
    fecha_fin_transaccion = Column(DateTime(timezone=True), nullable=False)
    fecha_creacion = Column(DateTime(timezone=True), server_default=func.current_timestamp())
    estado_transaccion = Column(String(50), nullable=False)
    falla_servicio = Column(String(500), nullable=True)
    id_tipo_transaccion = Column(Integer, nullable=False)
    id_usuario = Column(Integer, nullable=False)
    id_recurso = Column(String(20), nullable=False)
    id_empleado_responsable = Column(Integer, nullable=True)
    
