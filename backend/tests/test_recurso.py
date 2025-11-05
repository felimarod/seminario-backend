"""Tests para las rutas de recurso"""

from app.main import app
from app.recurso.schemas import RecursoCreate
from fastapi.testclient import TestClient

client = TestClient(app)


def test_get_recurso_by_id():
    """Prueba para obtener un recurso por su ID"""
    response = client.get("/recurso/1")
    assert response.status_code == 200
    assert response.json() == {
        "nombre_recurso": "PC-101",
        "descripcion_recurso": "Computadora de escritorio en laboratorio 1",
        "estado_recurso": "Disponible",
        "id_tipo_recurso": 1,
        "id_recurso": 1,
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
