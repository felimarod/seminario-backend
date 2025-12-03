"""Tests para las rutas de calificacion"""

from app.main import app
from fastapi.testclient import TestClient

client = TestClient(app)

def get_token():
    response = client.post(
        "/auth/token",
        data={"username": "admin@istrador.com", "password": "admin"},
        headers={"Content-Type": "application/x-www-form-urlencoded"}
    )
    assert response.status_code == 200
    return response.json()["access_token"]


def test_get_calificacion_by_id():
    """Prueba para obtener una calificacion por su ID"""
    response = client.get("/calificacion/1")

    token = get_token()

    response = client.get(
        "/calificacion/1",
        headers={"Authorization": f"Bearer {token}"}
    )

    assert response.status_code == 200
    assert response.json() == {
        "cumplimiento_horarios": 5,
        "calidad_servicio": 5,
        "atencion_personal": 5,
        "id_transaccion": 1,
        "id_calificacion": 1,
    }
