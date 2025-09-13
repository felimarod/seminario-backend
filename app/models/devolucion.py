from sqlalchemy import Column, Integer, TIMESTAMP, Boolean, ForeignKey
from .base import Base

class Devolucion(Base):
    __tablename__ = "devolucion"
    id_devolucion = Column(Integer, primary_key=True, autoincrement=True)
    id_prestamo = Column(Integer, ForeignKey("prestamo.id_prestamo"), nullable=False)
    hora_devolucion = Column(TIMESTAMP, nullable=False)
    id_empleado_recibe = Column(Integer, ForeignKey("usuario.id_usuario"), nullable=False)
    fallo_servicio = Column(Boolean, default=False)
