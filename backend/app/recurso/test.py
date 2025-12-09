"""Tests para las rutas de recurso"""

from app.main import app
from fastapi.testclient import TestClient
from tests.test_auth import get_token

client = TestClient(app)


def test_get_recursos():
    """Prueba para obtener recursos"""

    token = get_token()

    body = {
        "id_unidad": 1,
        "id_tipo_recurso": 4,
    }

    response = client.post(
        "/recurso/?skip=0&limit=100",
        headers={"Authorization": f"Bearer {token}"},
        json=body,
    )

    assert response.status_code == 200
    assert response.json() == [
        {
            "recurso": {
                "id_recurso": "Lab-1",
                "nombre_recurso": "Laboratorio A1",
                "descripcion_recurso": "Laboratorio equipado para prácticas de electrónica",
            },
            "tipo_recurso": {
                "id_tipo_recurso": 4,
                "nombre_tipo_recurso": "Laboratorio",
            },
            "unidad": {"id_unidad": 1, "nombre_unidad": "Laboratorios de Computo"},
            "foto_recurso": None,
        },
        {
            "recurso": {
                "id_recurso": "Lab-2",
                "nombre_recurso": "Laboratorio A2",
                "descripcion_recurso": "Laboratorio con kits de robótica",
            },
            "tipo_recurso": {
                "id_tipo_recurso": 4,
                "nombre_tipo_recurso": "Laboratorio",
            },
            "unidad": {"id_unidad": 1, "nombre_unidad": "Laboratorios de Computo"},
            "foto_recurso": None,
        },
        {
            "recurso": {
                "id_recurso": "Lab-3",
                "nombre_recurso": "Laboratorio B1",
                "descripcion_recurso": "Laboratorio para química básica",
            },
            "tipo_recurso": {
                "id_tipo_recurso": 4,
                "nombre_tipo_recurso": "Laboratorio",
            },
            "unidad": {"id_unidad": 1, "nombre_unidad": "Laboratorios de Computo"},
            "foto_recurso": None,
        },
        {
            "recurso": {
                "id_recurso": "Lab-4",
                "nombre_recurso": "Laboratorio B2",
                "descripcion_recurso": "Laboratorio de física",
            },
            "tipo_recurso": {
                "id_tipo_recurso": 4,
                "nombre_tipo_recurso": "Laboratorio",
            },
            "unidad": {"id_unidad": 1, "nombre_unidad": "Laboratorios de Computo"},
            "foto_recurso": None,
        },
        {
            "recurso": {
                "id_recurso": "Lab-5",
                "nombre_recurso": "Laboratorio C1",
                "descripcion_recurso": "Laboratorio para máquinas CNC",
            },
            "tipo_recurso": {
                "id_tipo_recurso": 4,
                "nombre_tipo_recurso": "Laboratorio",
            },
            "unidad": {"id_unidad": 1, "nombre_unidad": "Laboratorios de Computo"},
            "foto_recurso": None,
        },
        {
            "recurso": {
                "id_recurso": "Lab-6",
                "nombre_recurso": "Laboratorio C2",
                "descripcion_recurso": "Laboratorio para prácticas de redes",
            },
            "tipo_recurso": {
                "id_tipo_recurso": 4,
                "nombre_tipo_recurso": "Laboratorio",
            },
            "unidad": {"id_unidad": 1, "nombre_unidad": "Laboratorios de Computo"},
            "foto_recurso": None,
        },
        {
            "recurso": {
                "id_recurso": "Lab-7",
                "nombre_recurso": "Laboratorio D1",
                "descripcion_recurso": "Laboratorio de análisis de datos",
            },
            "tipo_recurso": {
                "id_tipo_recurso": 4,
                "nombre_tipo_recurso": "Laboratorio",
            },
            "unidad": {"id_unidad": 1, "nombre_unidad": "Laboratorios de Computo"},
            "foto_recurso": None,
        },
        {
            "recurso": {
                "id_recurso": "Lab-8",
                "nombre_recurso": "Laboratorio D2",
                "descripcion_recurso": "Laboratorio para energías renovables",
            },
            "tipo_recurso": {
                "id_tipo_recurso": 4,
                "nombre_tipo_recurso": "Laboratorio",
            },
            "unidad": {"id_unidad": 1, "nombre_unidad": "Laboratorios de Computo"},
            "foto_recurso": None,
        },
        {
            "recurso": {
                "id_recurso": "Lab-9",
                "nombre_recurso": "Laboratorio E1",
                "descripcion_recurso": "Laboratorio especializado",
            },
            "tipo_recurso": {
                "id_tipo_recurso": 4,
                "nombre_tipo_recurso": "Laboratorio",
            },
            "unidad": {"id_unidad": 1, "nombre_unidad": "Laboratorios de Computo"},
            "foto_recurso": None,
        },
        {
            "recurso": {
                "id_recurso": "Lab-10",
                "nombre_recurso": "Laboratorio E2",
                "descripcion_recurso": "Laboratorio avanzado de prototipado",
            },
            "tipo_recurso": {
                "id_tipo_recurso": 4,
                "nombre_tipo_recurso": "Laboratorio",
            },
            "unidad": {"id_unidad": 1, "nombre_unidad": "Laboratorios de Computo"},
            "foto_recurso": None,
        },
    ]


def test_post_recurso():
    """Prueba para crear un recurso nuevo"""

    token = get_token()

    headers = {"Authorization": f"Bearer {token}"}

    # Datos del formulario (campos de texto)
    data = {
        "nombre_recurso": "Recurso de prueba 2",
        "descripcion_recurso": "Descripción del recurso de prueba 2",
        "id_tipo_recurso": 4,
    }

    # Archivo de imagen (simular archivo)
    files = {
        "foto_recurso_prueba": ("test_image.jpg", b"fake image content", "image/jpeg")
    }

    response = client.post("/recurso/create", headers=headers, data=data, files=files)

    assert response.status_code == 201
    response_data = response.json()
    assert response_data["recurso"]["nombre_recurso"] == data["nombre_recurso"]
    assert (
        response_data["recurso"]["descripcion_recurso"] == data["descripcion_recurso"]
    )
    assert "id_recurso" in response_data["recurso"]
    assert response_data["tipo_recurso"]["id_tipo_recurso"] == data["id_tipo_recurso"]
    assert "nombre_tipo_recurso" in response_data["tipo_recurso"]
    assert "foto_recurso" in response_data
    assert response_data["foto_recurso"] is not None
