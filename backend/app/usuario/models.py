from sqlalchemy import Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from app.core.database import DBBase

class Usuario(DBBase):
    """Modelo de Usuario."""
    __tablename__ = "usuario"
    id_usuario = Column(Integer, primary_key=True, autoincrement=True)
    # id_unidad = Column(Integer, ForeignKey("unidad.id_unidad"), nullable=False)
    nombre = Column(String(100), nullable=False)
    apellido = Column(String(100), nullable=False)
    contrasena = Column(String(100), nullable=False)
    correo = Column(String(100), unique=True, nullable=False)
    activo = Column(Integer, nullable=False, default=1)
    id_tipo_usuario = Column(Integer, ForeignKey("tipousuario.id_tipo_usuario"), nullable=False)
    id_unidad = Column(Integer, ForeignKey("unidad.id_unidad"), nullable=True)
    
    unidad = relationship("Unidad")
    tipo_usuario = relationship("TipoUsuario")
    historial = relationship("HistorialTransaccion", back_populates="usuario")
    

