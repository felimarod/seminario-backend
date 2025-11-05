"""Tests para las rutas de calificacion"""

from app.main import app
from fastapi.testclient import TestClient

client = TestClient(app)


def test_get_calificacion_by_id():
    """Prueba para obtener una calificacion por su ID"""
    response = client.get("/calificacion/1")
    assert response.status_code == 200
    assert response.json() == {
        "cumplimiento_horarios": 5,
        "calidad_servicio": 5,
        "atencion_personal": 5,
        "id_transaccion": 1,
        "id_calificacion": 1,
    }
