from sqlalchemy import TIMESTAMP, Boolean, Column, ForeignKey, Integer

from app.core.database import DBBase


class Devolucion(DBBase):
    __tablename__ = "devolucion"
    id_devolucion = Column(Integer, primary_key=True, autoincrement=True)
    id_prestamo = Column(Integer, ForeignKey("prestamo.id_prestamo"), nullable=False)
    hora_devolucion = Column(TIMESTAMP, nullable=False)
    id_empleado_recibe = Column(
        Integer, ForeignKey("usuario.id_usuario"), nullable=False
    )
    fallo_servicio = Column(Boolean, default=False)
