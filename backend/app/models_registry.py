"""Carga todos los modelos para registrar los mappers de SQLAlchemy."""
from app.tipo_usuario import models as tipo_usuario_models
from app.usuario import models as usuario_models
from app.unidad import models as unidad_models
from app.tipo_recurso import models as tipo_recurso_models
from app.recurso import models as recurso_models
from app.estado_transaccion import models as estado_transaccion_models
from app.historial_transaccion import models as historial_transaccion_models
from app.transaccion import models as transaccion_models
from app.horario import models as horario_models
from app.calificacion import models as calificacion_models