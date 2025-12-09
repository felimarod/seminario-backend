"""Tests para el endpoint de obtener usuario por ID."""

from app.main import app
from fastapi.testclient import TestClient
from tests.test_auth import get_token

client = TestClient(app)


def test_get_usuario_by_email():
    """Test para obtener un usuario por su email."""

    token = get_token()

    response = client.get(
        "/usuario/admin@istrador.com", headers={"Authorization": f"Bearer {token}"}
    )

    assert response.status_code == 200
    assert response.json() == {
        "usuario": {
            "id_usuario": 3,
            "nombre": "admin",
            "apellido": "admin",
            "correo": "admin@istrador.com",
        },
        "unidad": {"id_unidad": 1, "nombre_unidad": "Laboratorios de Computo"},
        "tipo": {"id_tipo_usuario": 2, "nombre_tipo_usuario": "admin unidad"},
    }
