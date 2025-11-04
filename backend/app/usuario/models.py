from sqlalchemy import Column, ForeignKey, Integer, String

from app.core.database import DBBase


class Usuario(DBBase):
    """Modelo de Usuario."""
    __tablename__ = "usuario"
    id_usuario = Column(Integer, primary_key=True, autoincrement=True)
    # id_unidad = Column(Integer, ForeignKey("unidad.id_unidad"), nullable=False)
    id_tipo_usuario = Column(
        Integer, nullable=False
    )
    nombre = Column(String(100), nullable=False)
    apellido = Column(String(100), nullable=False)
    contrasena = Column(String(100), nullable=False)
    correo = Column(String(100), unique=True, nullable=False)
    activo = Column(Integer, nullable=False, default=1)
    # tipo_usuario = relationship("TipoUsuario", back_populates="usuarios")
