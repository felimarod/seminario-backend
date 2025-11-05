from fastapi.testclient import TestClient
from app.main import app

from app.recurso.schemas import RecursoCreate

client = TestClient(app)

def test_get_recurso_by_id():
    response = client.get("/recurso/1")
    assert response.status_code == 200
    assert response.json() == {"nombre": "admin_labs","apellido": "admin_labs","correo": "admin@ejemplo.com","id_tipo_usuario": 2,"id_usuario": 1}

def test_post_recurso():
    recurso = RecursoCreate(
        id_tipo_recurso=2,
        nombre_recurso="(test) Proyector 2",
        descripcion_recurso="(test) Descripción proyector, modelo xyz, bla bla bla...",
        estado_recurso="Prestado"
    )

    response = client.post("/recurso/", json=recurso.dict())
    assert response.status_code == 201
    