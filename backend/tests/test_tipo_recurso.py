"""Tests para el endpoint de obtener tipo_recurso por ID."""

from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)


def get_token():
    response = client.post(
        "/auth/token",
        data={"username": "admin@istrador.com", "password": "admin"},
        headers={"Content-Type": "application/x-www-form-urlencoded"}
    )
    assert response.status_code == 200
    return response.json()["access_token"]

def test_get_tipo_recurso_by_id():
    """Test para obtener un tipo_recurso por su ID."""

    token = get_token()

    response = client.get(
        "/tipo_recurso/1",
        headers={"Authorization": f"Bearer {token}"}
    )

    assert response.status_code == 200
    assert response.json() == {
        "nombre_tipo_recurso": "Computadora",
        "codigo_tipo_recurso": "PC",
        "descripcion_tipo_recurso": "Equipo de computo de escritorio o portatil",
        "horario_disponibilidad": "horario_default",
        "id_tipo_recurso": 1,
        "id_unidad": 1,
        "unidad": "Laboratorios de Computo"
    }
