"""API routes para Transaccion."""

from typing import List, Optional

from fastapi import APIRouter, Depends, HTTPException, Query, Request
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
from app.tipo_transaccion.selectors import TipoTransaccionSelectors
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
    for transaccion in transacciones:
        usuario = UsuarioSelectors.get_by_id(db=db,id_usuario=transaccion.id_usuario)
        empleado = UsuarioSelectors.get_by_id(db=db,id_usuario=transaccion.id_empleado_responsable)
        recurso = RecursoSelectors.get_by_id(db=db,id_recurso=transaccion.id_recurso)
        tipoRecurso = TipoRecursoSelectors.get_by_id(db=db,id_tipo_recurso=recurso.id_tipo_recurso)
        tipoTrans = TipoTransaccionSelectors.get_by_id(db=db,id_tipo_transaccion=transaccion.id_tipo_transaccion)

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
        transaccion.tipo_transaccion = {
            "id_tipo": tipoTrans.id_tipo_transaccion,
            "nombre_tipo": tipoTrans.nombre_tipo_transaccion
        }
        if transaccion.id_empleado_responsable is not None:
            transaccion.empleado_responsable={
                "id_usuario":empleado.id_usuario,
                "nombre": usuario.nombre,
                "apellido": usuario.apellido
            }
    return transacciones


@router.post("/create", response_model=Optional[TransaccionResponse], status_code=201)
def create_transaccion(request: Request, transaccion_data: TransaccionCreate, db: Session = Depends(get_db)):
    """Crea un nuevo transaccion."""
    user = request.state.user
    if user["tipo"] not in (3,4):
        raise HTTPException(status_code=403, detail="No tienes permiso para crear una reserva")
    if user["tipo"] == 3:
        transaccion_data.id_empleado_responsable = user["id"]
    if user["tipo"] == 4:
        transaccion_data.id_usuario = user["id"]
    response = TransaccionService.create(db, transaccion_data)
    usuario = UsuarioSelectors.get_by_id(db=db,id_usuario=transaccion_data.id_usuario)
    empleado = UsuarioSelectors.get_by_id(db=db,id_usuario=transaccion_data.id_empleado_responsable)
    recurso = RecursoSelectors.get_by_id(db=db,id_recurso=transaccion_data.id_recurso)
    tipoRecurso = TipoRecursoSelectors.get_by_id(db=db,id_tipo_recurso=recurso.id_tipo_recurso)
    tipoTrans = TipoTransaccionSelectors.get_by_id(db=db,id_tipo_transaccion=transaccion_data.id_tipo_transaccion)

    response.usuario = {
        "id_usuario":usuario.id_usuario,
        "nombre": usuario.nombre,
        "apellido": usuario.apellido
    }
    response.recurso = {
        "id_recurso": recurso.id_recurso,
        "nombre_recurso": recurso.nombre_recurso,
        "id_tip": tipoRecurso.id_tipo_recurso,
        "nombre_tipo": tipoRecurso.nombre_tipo_recurso,
    }
    response.tipo_transaccion = {
        "id_tipo": tipoTrans.id_tipo_transaccion,
        "nombre_tipo": tipoTrans.nombre_tipo_transaccion
    }
    if transaccion_data.id_empleado_responsable is not None:
        response.empleado_responsable={
            "id_usuario":empleado.id_usuario,
            "nombre": usuario.nombre,
            "apellido": usuario.apellido
        }
    return response


@router.put("/{id_transaccion}", response_model=TransaccionResponse)
def update_transaccion(
    id_transaccion: int, transaccion_data: TransaccionUpdate, db: Session = Depends(get_db)
):
    """Actualiza un transaccion."""
    return TransaccionService.update(db, id_transaccion, transaccion_data)
