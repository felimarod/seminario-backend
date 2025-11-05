"""Tests para el endpoint de obtener transaccion por ID."""

from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)


def test_get_transaccion_by_id():
    """Test para obtener una transaccion por su ID."""
    response = client.get("/transaccion/1")
    assert response.status_code == 200
    assert response.json() == {
        "estado_transaccion": "Completada",
        "id_tipo_transaccion": 1,
        "id_usuario": 1,
        "id_recurso": 1,
        "id_transaccion": 1,
    }
