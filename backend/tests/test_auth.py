"""Pruebas para la autenticación."""

from app.main import app
from fastapi.testclient import TestClient


def get_token(user_type: int = 1):
    """Crea el token

    user_type:
        1: admin unidad
        2:
        3: empleado unidad
        4: usuario normal

    Returns:
        Token: token de seguridad para el backend
    """
    user_data = None

    if user_type == 1:
        user_data = {"username": "carlos.vergara@admin.com", "password": "Super2025*"}
    elif user_type == 2:
        user_data = {"username": "admin@juandoc.com", "password": "admin"}
    elif user_type == 3:
        user_data = {
            "username": "julian.cortes@labcomputo.com",
            "password": "Empleado01",
        }
    elif user_type == 4:
        user_data = {"username": "laura.ramirez@gmail.com", "password": "Laura123"}

    response = client.post(
        "/auth/token",
        data=user_data,
        headers={"Content-Type": "application/x-www-form-urlencoded"},
    )
    assert response.status_code == 200
    return response.json()["access_token"]


client = TestClient(app)


def test_auth_login():
    """Prueba de la autenticación."""
    response = client.post(
        "/auth/token",
        data={"username": "carlos.vergara@admin.com", "password": "Super2025*"},
        headers={"Content-Type": "application/x-www-form-urlencoded"},
    )
    assert response.status_code == 200
    assert "access_token" in response.json()
    assert response.json()["token_type"] == "bearer"
