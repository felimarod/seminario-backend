from sqlalchemy import Column, ForeignKey, Integer, String

from app.core.database import DBBase


class TipoRecurso(DBBase):
    """Modelo de Tipo Recurso."""
    __tablename__ = "tiporecurso"
    id_tipo_recurso = Column(Integer, primary_key=True, autoincrement=True)
    # id_unidad = Column(Integer, ForeignKey("unidad.id_unidad"), nullable=False)
    id_unidad = Column(
        Integer, nullable=False
    )
    nombre_tipo_recurso = Column(String(100), nullable=False)
    descripcion_tipo_recurso = Column(String(255), nullable=False)
    horario_disponibilidad = Column(String(100), nullable=False)
    #granuralidad_disponibilidad = Column(Integer)
    