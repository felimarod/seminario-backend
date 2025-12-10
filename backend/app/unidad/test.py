"""Tests para el modulo de unidades."""

from app.main import app
from fastapi.testclient import TestClient
from tests.test_auth import get_token

client = TestClient(app)


def test_get_unidad():
    """Test para obtener una lista de unidades."""

    token = get_token()

    response = client.get(
        "/unidad/?skip=0&limit=100",
        headers={"Authorization": f"Bearer {token}"},
    )

    assert response.status_code == 200
    assert response.json() == [
        {
            "nombre_unidad": "Laboratorios de Computo",
            "horario_unidad": "horario_default",
            "id_unidad": 1,
        },
        {
            "nombre_unidad": "Sala de Multimedia",
            "horario_unidad": "horario_extendido",
            "id_unidad": 2,
        },
        {
            "nombre_unidad": "Biblioteca Central",
            "horario_unidad": "horario_24_7",
            "id_unidad": 3,
        },
        {
            "nombre_unidad": "Centro de Emprendimiento",
            "horario_unidad": "horario_medio_tiempo",
            "id_unidad": 4,
        },
        {
            "nombre_unidad": "Laboratorio de Electrónica",
            "horario_unidad": "horario_nocturno",
            "id_unidad": 5,
        },
        {
            "nombre_unidad": "Auditorio Principal",
            "horario_unidad": "horario_fin_semana",
            "id_unidad": 6,
        },
    ]
