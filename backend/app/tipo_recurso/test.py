"""Tests para el endpoint de obtener tipo_recurso por ID."""

from app.main import app
from fastapi.testclient import TestClient
from tests.test_auth import get_token

client = TestClient(app)


def test_get_tipo_recurso():
    """Test para obtener tipo_recurso."""

    token = get_token()

    headers = {"Authorization": f"Bearer {token}"}

    payload = {"id_unidad": 1}

    response = client.post(
        "/tipo_recurso/?skip=0&limit=100", headers=headers, json=payload
    )

    assert response.status_code == 200
    assert response.json() == [
        {
            "tipo_recurso": {
                "id_tipo_recurso": 1,
                "nombre_tipo_recurso": "Computadora",
                "codigo_tipo_recurso": "PC",
            },
            "unidad": {"id_unidad": 1, "nombre_unidad": "Laboratorios de Computo"},
            "horario": "horario_default",
        },
        {
            "tipo_recurso": {
                "id_tipo_recurso": 2,
                "nombre_tipo_recurso": "Proyector",
                "codigo_tipo_recurso": "Proyec",
            },
            "unidad": {"id_unidad": 1, "nombre_unidad": "Laboratorios de Computo"},
            "horario": "horario_default",
        },
        {
            "tipo_recurso": {
                "id_tipo_recurso": 3,
                "nombre_tipo_recurso": "Sala de Reuniones",
                "codigo_tipo_recurso": "Sal",
            },
            "unidad": {"id_unidad": 1, "nombre_unidad": "Laboratorios de Computo"},
            "horario": "horario_default",
        },
        {
            "tipo_recurso": {
                "id_tipo_recurso": 4,
                "nombre_tipo_recurso": "Laboratorio",
                "codigo_tipo_recurso": "Lab",
            },
            "unidad": {"id_unidad": 1, "nombre_unidad": "Laboratorios de Computo"},
            "horario": "horario_default",
        },
        {
            "tipo_recurso": {
                "id_tipo_recurso": 5,
                "nombre_tipo_recurso": "Impresora",
                "codigo_tipo_recurso": "Imp",
            },
            "unidad": {"id_unidad": 1, "nombre_unidad": "Laboratorios de Computo"},
            "horario": "horario_default",
        },
    ]


def test_create_tipo_recurso():
    """Test para crear tipo_recurso."""

    token = get_token()

    headers = {"Authorization": f"Bearer {token}"}

    payload = {
        "nombre_tipo_recurso": "PC de prueba 1",
        "codigo_tipo_recurso": "PC_Prueba_1",
        "descripcion_tipo_recurso": "Tipo de recurso para pruebas",
        "horario_disponibilidad": "horario_default",
        "granuralidad_disponibilidad": 1,
        "id_unidad": 1,
    }
    response = client.post("/tipo_recurso/create", headers=headers, json=payload)

    assert response.status_code == 201
    data = response.json()

    # Verificar que contiene las claves principales
    assert "tipo_recurso" in data
    assert "unidad" in data
    assert "horario" in data

    # Verificar datos del tipo_recurso (sin id)
    assert data["tipo_recurso"]["nombre_tipo_recurso"] == payload["nombre_tipo_recurso"]
    assert data["tipo_recurso"]["codigo_tipo_recurso"] == payload["codigo_tipo_recurso"]
    assert "id_tipo_recurso" in data["tipo_recurso"]

    # Verificar datos de unidad
    assert data["unidad"]["id_unidad"] == 1
    assert data["unidad"]["nombre_unidad"] == "Laboratorios de Computo"

    # Verificar horario
    assert data["horario"] == "horario_default"
