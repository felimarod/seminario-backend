"""This module contains the database configuration for the application."""

from sqlalchemy import create_engine
from sqlalchemy.orm import declarative_base, sessionmaker

from app.core.settings import get_settings

settings = get_settings()

engine = create_engine(
    url=settings.POSTGRES_DATABASE_URL,
    pool_pre_ping=True,
    pool_size=100,  # The size of the connection pool
    max_overflow=50,  # The maximum number of connections that can be opened beyond the pool size. Set to -1 for no limit.
)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

DBBase = declarative_base()

from app.calificacion import models as calificacion_models  # noqa: E402, F401
from app.devolucion import models as devolucion_models  # noqa: E402, F401
from app.prestamo import models as prestamo_models  # noqa: E402, F401
from app.recurso import models as recurso_models  # noqa: E402, F401
from app.reserva import models as reserva_models  # noqa: E402, F401
from app.tipo_recurso import models as tipo_recurso_models  # noqa: E402, F401

# Import models para que Alembic pueda detectarlos
from app.unidad import models as unidad_models  # noqa: E402, F401
from app.usuario import models as usuario_models  # noqa: E402, F401
