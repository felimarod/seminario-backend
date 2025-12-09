"""Tests para el endpoint de obtener transaccion por ID."""

from app.main import app
from app.transaccion.schemas import Filtros
from fastapi.testclient import TestClient
from tests.test_auth import get_token

client = TestClient(app)


def test_get_transaccion():
    """Test para obtener una transaccion por su ID."""

    token = get_token()
    body = Filtros(
        ventana_tiempo_inicio="2025-12-09T00:19:03.701Z",
        ventana_tiempo_fin="2025-12-09T00:19:03.701Z",
        ventana_atributo="string",
        id_usuario=0,
        id_recurso="string",
        id_empleado_responsable=0,
        estado_transaccion=[0],
        id_tipo_recurso=0,
        id_unidad=0,
    )

    response = client.post(
        "/transaccion/", headers={"Authorization": f"Bearer {token}"}, json=body
    )

    assert response.status_code == 200
    assert response.json() == []
