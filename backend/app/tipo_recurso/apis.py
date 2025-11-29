"""API routes para tipo recurso."""

from typing import List

from fastapi import APIRouter, Depends, HTTPException, Query, Request
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.tipo_recurso.schemas import (
    TipoRecursoCreate,
    TipoRecursoResponse,
    TipoRecursoUpdate,
)
from app.horario.schemas import HorarioDetalleBase
from app.tipo_recurso.selectors import TipoRecursoSelectors
from app.unidad.selectors import UnidadSelectors
from app.tipo_recurso.services import TipoRecursoService

router = APIRouter()


@router.get("/", response_model=List[TipoRecursoResponse])
def get_tipo_recursos(
    request: Request,
    id_unidad: int = Query(None, description="Filtrar por unidad"),
    skip: int = Query(0, ge=0),
    limit: int = Query(100, ge=1, le=1000),
    db: Session = Depends(get_db),
):
    """Obtiene tipo_recursos, opcionalmente filtrados por unidad."""
    user = request.state.user
    if user["tipo"] in (2,3):
        id_unidad = user["unidad"]
    if id_unidad:
        return TipoRecursoSelectors.get_by_unidad_tipo_recurso(db, id_unidad, skip=skip, limit=limit)
    return TipoRecursoSelectors.get_all(db, skip=skip, limit=limit)


@router.get("/{id_tipo_recurso}", response_model=TipoRecursoResponse)
def get_tipo_recurso(id_tipo_recurso: int, request: Request, db: Session = Depends(get_db)):
    """Obtiene un tipo_recurso por su ID."""
    tipo_recurso = TipoRecursoSelectors.get_by_id(db, id_tipo_recurso)
    if not tipo_recurso:
        raise HTTPException(status_code=404, detail="TipoRecurso no encontrado")
    return tipo_recurso


@router.post("/", response_model=TipoRecursoResponse, status_code=201)
def create_tipo_recurso(tipo_recurso_data: TipoRecursoCreate, request: Request, db: Session = Depends(get_db)):
    """Crea un nuevo tipo_recurso."""
    user = request.state.user
    if user["tipo"] not in (1,2):
        raise HTTPException(status_code=403, detail="No tienes permiso para ver esta información")
    if user["tipo"] == 2:
        tipo_recurso_data.id_unidad = user["unidad"]
        if tipo_recurso_data.horario_disponibilidad is None:
            unidad = UnidadSelectors.get_by_id(db,tipo_recurso_data.id_unidad)
            tipo_recurso_data.horario_disponibilidad = unidad.horario_unidad
    return TipoRecursoService.create(db, tipo_recurso_data)


@router.put("/{id_tipo_recurso}", response_model=TipoRecursoResponse)
def update_tipo_recurso(
    id_tipo_recurso: int, tipo_recurso_data: TipoRecursoUpdate, request: Request, db: Session = Depends(get_db)
):
    """Actualiza un tipo_recurso."""
    user = request.state.user
    if user["tipo"] not in (1,2):
        raise HTTPException(status_code=403, detail="No tienes permiso para ver esta información")
    if user["tipo"] == 2:
        if not tipo_recurso_data.id_unidad: tipo_recurso_data.id_unidad = user["unidad"]
        tipo_recurso = TipoRecursoSelectors.get_by_id(db, id_tipo_recurso)
        if tipo_recurso is None:
            raise HTTPException(status_code=403, detail="El tipo de recurso no existe")
        if tipo_recurso.id_unidad != user["unidad"]:
            raise HTTPException(status_code=403, detail="Este tipo de recursos no pertenece a tu unidad")
        if tipo_recurso_data.id_unidad != user["unidad"]:
            raise HTTPException(status_code=403, detail="No puedes mover tus recursos a otras unidades")
    print(1)
    return TipoRecursoService.update(db, id_tipo_recurso, tipo_recurso_data)
