"""Tests para el endpoint de obtener usuario por ID."""

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

def test_get_usuario_by_id():
    """Test para obtener un usuario por su ID."""

    token = get_token()
    
    response = client.get(
        "/usuario/1",headers={"Authorization": f"Bearer {token}"}
    )

    assert response.status_code == 200
    assert response.json() == {
        "nombre": "super",
        "apellido": "super",
        "correo": "super@macista.com",
        "id_tipo_usuario": 1,
        "id_unidad": None,
        "id_usuario": 1
    }