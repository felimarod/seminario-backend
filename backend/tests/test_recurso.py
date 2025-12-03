"""Tests para las rutas de recurso"""

from app.main import app
from app.recurso.schemas import RecursoCreate
from fastapi.testclient import TestClient

client = TestClient(app)

def get_token():
    response = client.post(
        "/auth/token",
        data={"username": "admin@istrador.com", "password": "admin"},
        headers={"Content-Type": "application/x-www-form-urlencoded"}
    )
    assert response.status_code == 200
    return response.json()["access_token"]

def test_get_recurso_by_id():
    """Prueba para obtener un recurso por su ID"""

    token = get_token()

    response = client.get(
        "/recurso/PC-1",
        headers={"Authorization": f"Bearer {token}"}
    )

    assert response.status_code == 200
    assert response.json() == {
        "nombre_recurso": "Lenovo 420",
        "descripcion_recurso": "Computadora de escritorio en laboratorio 1",
        "id_tipo_recurso": 1,
        "estado_recurso": "Disponible",
        "id_recurso": "PC-1",
        "nombre_tipo": "Computadora",
        "foto_recurso": None,
    }


# def test_post_recurso():
#     """Prueba para crear un nuevo recurso"""
#     recurso = RecursoCreate(
#         id_tipo_recurso=2,
#         nombre_recurso="(test) Proyector 2",
#         descripcion_recurso="(test) Descripción proyector, modelo xyz",
#         estado_recurso="Prestado",
#     )

#     response = client.post("/recurso/", json=recurso.model_dump_json())
#     assert response.status_code == 201
