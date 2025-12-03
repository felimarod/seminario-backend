"""Tests para el endpoint de obtener transaccion por ID."""

from fastapi.testclient import TestClient
from app.main import app

client = TestClient(app)

def get_token():
    response = client.post(
        "/auth/token",
        data={"username": "admin@istrador.com", "password": "admin"},
        headers={"Content-Type": "application/x-www-form-urlencoded"}
    )
    assert response.status_code == 200
    return response.json()["access_token"]

def test_get_transaccion_by_id():
    """Test para obtener una transaccion por su ID."""

    token = get_token()

    response = client.get(
        "/transaccion/1",
        headers={"Authorization": f"Bearer {token}"}
    )

    assert response.status_code == 200
    assert response.json() == {
  "fecha_inicio_transaccion": "2025-12-03T05:38:33",
  "fecha_fin_transaccion": "2025-12-04T05:38:33",
  "estado_transaccion": "Completada",
  "falla_servicio": None,
  "id_transaccion": 1,
  "fecha_creacion": "2025-12-03T05:38:33.817467",
  "tipo_transaccion": {
    "id_tipo": 1,
    "nombre_tipo": "Reserva"
  },
  "usuario": {
    "id_usuario": 4,
    "nombre": "empleado",
    "apellido": "empleado"
  },
  "recurso": {
    "id_recurso": "PC-1",
    "nombre_recurso": "Lenovo 420",
    "id_tip": 1,
    "nombre_tipo": "Computadora"
  },
  "empleado_responsable": {
    "id_usuario": 3,
    "nombre": "empleado",
    "apellido": "empleado"
  }
}
