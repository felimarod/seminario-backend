from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)

def test_get_tipo_recurso_by_id():
    response = client.get("/tipo_recurso/2")
    assert response.status_code == 200
    assert response.json() == {"nombre_tipo_recurso": "cambiao","descripcion_tipo_recurso": "string","horario_disponibilidad": "horario_default","id_unidad": 1,"id_tipo_recurso": 2}