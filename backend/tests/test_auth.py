"""Pruebas para la autenticación."""

from app.main import app
from fastapi.testclient import TestClient


def get_token():
    """Crea el token

    Returns:
        Token: token de seguridad para el backend
    """
    response = client.post(
        "/auth/token",
        data={"username": "admin@istrador.com", "password": "admin"},
        headers={"Content-Type": "application/x-www-form-urlencoded"},
    )
    assert response.status_code == 200
    return response.json()["access_token"]


client = TestClient(app)


def test_auth_login():
    """Prueba de la autenticación."""
    response = client.post(
        "/auth/token",
        data={"username": "admin@istrador.com", "password": "admin"},
        headers={"Content-Type": "application/x-www-form-urlencoded"},
    )
    assert response.status_code == 200
    assert "access_token" in response.json()
    assert response.json()["token_type"] == "bearer"
