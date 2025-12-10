"""Tests para el endpoint de obtener transaccion por ID."""

from app.main import app
from app.transaccion.schemas import Filtros, TransaccionCreate
from fastapi.testclient import TestClient
from tests.test_auth import get_token

client = TestClient(app)


def test_get_transaccion():
    """Test para obtener una transaccion por su ID."""

    token = get_token()
    body = Filtros(
        ventana_tiempo_inicio="2025-12-09T00:19:03.701Z",
        ventana_tiempo_fin="2025-12-09T00:19:03.701Z",
        ventana_atributo="string",  # "inicio" - "fin" - "creacion"
        id_usuario=0,
        id_recurso="string",
        id_empleado_responsable=0,
        estado_transaccion=[0],
        id_tipo_recurso=0,
        id_unidad=0,  # No es necesario pasar este filtro para el test, si es empleado
    )

    response = client.post(
        "/transaccion/", headers={"Authorization": f"Bearer {token}"}, json=body
    )

    assert response.status_code == 200
    assert response.json() == []


# def test_post_transaccion():
#     """Test para crear una transaccion."""

#     token = get_token()

#     # body = TransaccionCreate(
#     #     id_recurso="Lab-1",
#     #     id_usuario=2,
#     #     fecha_inicio_transaccion="2025-12-15T10:00:00Z",
#     #     fecha_fin_transaccion="2025-12-15T12:00:00Z",
#     #     falla_servicio=False,
#     #     id_empleado_responsable=1,
#     # )
#     body = {
#         "id_recurso": "Lab-1",
#         "id_usuario": 2,
#         "fecha_inicio_transaccion": "2025-12-15T10:00:00Z",
#         "fecha_fin_transaccion": "2025-12-15T12:00:00Z",
#         "falla_servicio": False,
#         "id_empleado_responsable": 1,
#     }

#     response = client.post(
#         "/transaccion/create",
#         headers={"Authorization": f"Bearer {token}"},
#         json=body,
#     )
#     assert response.status_code == 201
#     # assert response.json() == {
#     #     "id_transaccion": response.json()["id_transaccion"],
#     #     "recurso": {
#     #         "id_recurso": "Lab-1",
#     #         "nombre_recurso": "Laboratorio A1",
#     #     },
#     #     "usuario": {
#     #         "id_usuario": 2,
#     #         "nombre": "Juan",
#     #         "apellido": "Perez",
#     #     },
#     #     "empleado_responsable": {
#     #         "id_usuario": 1,
