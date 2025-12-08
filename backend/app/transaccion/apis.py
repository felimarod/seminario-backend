"""API routes para Transaccion."""

from typing import List, Optional

from fastapi import APIRouter, Depends, HTTPException, Query, Request, Form
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.transaccion.schemas import (
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

@router.get("/{id_transaccion}", response_model=TransaccionResponse)
def get_transaccion(
    id_transaccion: int,
    db: Session = Depends(get_db),
):
    """Obtiene un transaccion por su ID."""
    transaccion = TransaccionSelectors.get_by_id(db, id_transaccion)
    if transaccion is None:
        raise HTTPException(status_code=404, detail="Transaccion no encontrado")
    usuario = UsuarioSelectors.get_by_id(db=db,id_usuario=transaccion.id_usuario)
    empleado = UsuarioSelectors.get_by_id(db=db,id_usuario=transaccion.id_empleado_responsable)
    recurso = RecursoSelectors.get_by_id(db=db,id_recurso=transaccion.id_recurso)
    tipoRecurso = TipoRecursoSelectors.get_by_id(db=db,id_tipo_recurso=recurso.id_tipo_recurso)
    transaccion.usuario = {
        "id_usuario":usuario.id_usuario,
        "nombre": usuario.nombre,
        "apellido": usuario.apellido
    }
    transaccion.recurso = {
        "id_recurso": recurso.id_recurso,
        "nombre_recurso": recurso.nombre_recurso,
        "id_tip": tipoRecurso.id_tipo_recurso,
        "nombre_tipo": tipoRecurso.nombre_tipo_recurso,
    }
    if transaccion.id_empleado_responsable is not None:
        transaccion.empleado_responsable={
            "id_usuario":empleado.id_usuario,
            "nombre": usuario.nombre,
            "apellido": usuario.apellido
        }
    return transaccion


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
    id_transaccion: int = Form(..., description="ID de la transacción a actualizar"), 
    password_user: str = Form(..., description="Valor propio del usuario para validar que la accion se realiza con conocimiento del usuario (por ahora la contraseña)"), 
    db: Session = Depends(get_db)
):
    """Actualiza estado de transaccion de reserva a prestamo."""
    user = request.state.user
    if user["tipo"] != 3:
        raise HTTPException(status_code=403, detail="No tienes permiso para actualizar una reserva a prestamo")
    transaccion = TransaccionService.prestar(db, id_transaccion, int(user["id"]), password_user)
    return TransaccionResponse.from_transaccion_db(transaccion)

@router.put("/devolucion", response_model=TransaccionResponse)
def prestamo_to_devolucion(
    request: Request, 
    id_transaccion: int = Form(..., description="ID de la transacción a actualizar"),  
    db: Session = Depends(get_db)
):
    """Actualiza estado de transaccion de reserva a prestamo."""
    user = request.state.user
    if user["tipo"] != 3:
        raise HTTPException(status_code=403, detail="No tienes permiso para actualizar una reserva a prestamo")
    transaccion = TransaccionService.devolver(db, id_transaccion, int(user["id"]))
    return TransaccionResponse.from_transaccion_db(transaccion)

@router.put("/{id_transaccion}", response_model=TransaccionResponse)
def update_transaccion(
    id_transaccion: int, transaccion_data: TransaccionUpdate, db: Session = Depends(get_db)
):
    """Actualiza un transaccion."""
    return TransaccionService.update(db, id_transaccion, transaccion_data)
