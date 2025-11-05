from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)

def test_get_usuario_by_id():
    response = client.get("/usuario/1")
    assert response.status_code == 200
    assert response.json() == {"nombre": "admin_labs","apellido": "admin_labs","correo": "admin@ejemplo.com","id_tipo_usuario": 2,"id_usuario": 1}