"""API routes para Transaccion."""

from typing import List, Optional

from fastapi import APIRouter, Depends, HTTPException, Query, Request, Form
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.transaccion.schemas import (
    DevolucionIN,
    PrestamoIN,
    TransaccionCreate,
    TransaccionResponse,
    TransaccionUpdate,
    Filtros
)
from app.transaccion.selectors import TransaccionSelectors
from app.usuario.selectors import UsuarioSelectors
from app.recurso.selectors import RecursoSelectors
from app.tipo_recurso.selectors import TipoRecursoSelectors
from app.transaccion.services import TransaccionService

router = APIRouter()


@router.post("/", response_model=List[TransaccionResponse])
def get_transaccions(
    request: Request,
    filtros: Filtros,
    skip: int = Query(0, ge=0),
    limit: int = Query(100, ge=1, le=1000),
    db: Session = Depends(get_db),
):
    """Obtiene transaccions, opcionalmente filtrados por tipo de transaccion."""
    user = request.state.user
    if user["tipo"] in (2,3):
        filtros.id_unidad = user["unidad"]
    if user["tipo"] == 4:
        filtros.id_usuario = user["id"]
    transacciones = TransaccionSelectors.get_filter(db,filtros=filtros, skip=skip, limit=limit)
    if filtros.estado_transaccion:
        return [TransaccionResponse.from_transaccion_db(transaccion) for transaccion in transacciones if transaccion.lastHistorial().id_estado_transaccion in filtros.estado_transaccion]
    return [TransaccionResponse.from_transaccion_db(transaccion) for transaccion in transacciones]


@router.post("/create", response_model=Optional[TransaccionResponse], status_code=201)
def create_transaccion(request: Request, transaccion_data: TransaccionCreate, db: Session = Depends(get_db)):
    """Crea un nuevo transaccion."""
    user = request.state.user
    if user["tipo"] not in (3,4):
        raise HTTPException(status_code=403, detail="No tienes permiso para crear una reserva")
    if user["tipo"] == 3:
        transaccion_data.id_empleado_responsable = user["id"]
    if user["tipo"] == 4:
        if transaccion_data.fecha_inicio_transaccion is None:
            raise HTTPException(status_code=403, detail="Ingresa una fecha de inicio para realizar la reserva")
        if transaccion_data.id_empleado_responsable is not None:
            raise HTTPException(status_code=403, detail="No tienes permiso para asignar un empleado responsable")
        transaccion_data.id_usuario = user["id"]
    response = TransaccionService.create(db, transaccion_data)
    return TransaccionResponse.from_transaccion_db(response)


@router.put("/prestamo", response_model=TransaccionResponse)
def reserva_to_prestamo(
    request: Request, 
    body: PrestamoIN,
    db: Session = Depends(get_db)
):
    """Actualiza estado de transaccion de reserva a prestamo."""
    user = request.state.user
    if user["tipo"] != 3:
        raise HTTPException(status_code=403, detail="No tienes permiso para actualizar una reserva a prestamo")
    transaccion = TransaccionService.prestar(db, body.id_transaccion, int(user["id"]), body.password_user)
    return TransaccionResponse.from_transaccion_db(transaccion)

@router.put("/devolucion", response_model=TransaccionResponse)
def prestamo_to_devolucion(
    request: Request, 
    body: DevolucionIN,
    db: Session = Depends(get_db)
):
    """Actualiza estado de transaccion de reserva a prestamo."""
    user = request.state.user
    if user["tipo"] != 3:
        raise HTTPException(status_code=403, detail="No tienes permiso para actualizar una reserva a prestamo")
    transaccion = TransaccionService.devolver(db, body.id_transaccion, int(user["id"]))
    return TransaccionResponse.from_transaccion_db(transaccion)

@router.put("/cambioFechas", response_model=TransaccionResponse)
def update_transaccion(
    request: Request, transaccion_data: TransaccionUpdate, db: Session = Depends(get_db)
):
    """Actualiza un transaccion."""
    user = request.state.user
    if user["tipo"] != 4:
        raise HTTPException(status_code=403, detail="No tienes permiso para modificar una reserva")
    transaccion_data.id_usuario = user["id"]
    return TransaccionResponse.from_transaccion_db(TransaccionService.cambiar_fechas(db, transaccion_data))
