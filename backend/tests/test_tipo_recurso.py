"""Tests para el endpoint de obtener tipo_recurso por ID."""

from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)


def test_get_tipo_recurso_by_id():
    """Test para obtener un tipo_recurso por su ID."""
    response = client.get("/tipo_recurso/1")
    assert response.status_code == 200
    assert response.json() == {
        "nombre_tipo_recurso": "Computadora",
        "descripcion_tipo_recurso": "Equipo de computo de escritorio o portatil",
        "id_tipo_recurso": 1,
    }
