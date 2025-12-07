from sqlalchemy import Column, ForeignKey, Integer, String, LargeBinary, text
from sqlalchemy.orm import relationship
from sqlalchemy.schema import FetchedValue
from app.core.database import DBBase


class Recurso(DBBase):
    """Modelo de Recurso."""
    __tablename__ = "recurso"
    id_recurso = Column(String(20), primary_key=True,
        server_default=text("NULL"),     # Force SQLA to send INSERT without PK
        server_onupdate=FetchedValue(),)
    nombre_recurso = Column(String(100), nullable=False)
    descripcion_recurso = Column(String(500), nullable=False)
    foto_recurso = Column(LargeBinary)
    
    id_tipo_recurso = Column(Integer, ForeignKey("tiporecurso.id_tipo_recurso"), nullable=False)
    
    # Relación con TipoRecurso
    tipo_recurso = relationship("TipoRecurso")