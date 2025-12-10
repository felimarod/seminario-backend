"""Tests para el endpoint de obtener usuario por ID."""

from app.main import app
from fastapi.testclient import TestClient
from tests.test_auth import get_token

client = TestClient(app)


def test_get_usuario_by_email():
    """Test para obtener un usuario por su email."""

    token = get_token()

    response = client.get(
        "/usuario/carlos.vergara@admin.com",
        headers={"Authorization": f"Bearer {token}"},
    )

    assert response.status_code == 200
    assert response.json() == {
        "usuario": {
            "id_usuario": 1,
            "nombre": "Carlos",
            "apellido": "Vergara",
            "correo": "carlos.vergara@admin.com",
        },
        "unidad": None,
        "tipo": {"id_tipo_usuario": 1, "nombre_tipo_usuario": "superadmin"},
    }
