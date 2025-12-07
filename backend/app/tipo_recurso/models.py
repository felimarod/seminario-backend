from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship
from app.core.database import DBBase


class TipoRecurso(DBBase):
    """Modelo de Tipo Recurso."""
    __tablename__ = "tiporecurso"
    id_tipo_recurso = Column(Integer, primary_key=True)
    codigo_tipo_recurso = Column(String(100), nullable=False)
    nombre_tipo_recurso = Column(String(100), nullable=False)
    descripcion_tipo_recurso = Column(String(255), nullable=False)
    granuralidad_disponibilidad = Column(Integer,nullable=True)
    id_unidad = Column(Integer, ForeignKey("unidad.id_unidad"), nullable=False)
    horario_disponibilidad = Column(String(100), ForeignKey("horario.id_horario"),nullable=False)
    
    # Relación inversa con Recurso
    unidad = relationship("Unidad")
    horario = relationship("Horario")