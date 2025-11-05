"""API routes para Recurso."""

from typing import List

from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.recurso.schemas import (
    RecursoCreate,
    RecursoResponse,
    RecursoUpdate,
)
from app.recurso.selectors import RecursoSelectors
from app.recurso.services import RecursoService

router = APIRouter()


@router.get("/", response_model=List[RecursoResponse])
def get_recursos(
    id_tipo_recurso: int = Query(None, description="Filtrar por tipo de recurso"),
    skip: int = Query(0, ge=0),
    limit: int = Query(100, ge=1, le=1000),
    db: Session = Depends(get_db),
):
    """Obtiene recursos, opcionalmente filtrados por tipo de recurso."""
    if id_tipo_recurso:
        return RecursoSelectors.get_by_tipo_recurso(db, id_tipo_recurso, skip=skip, limit=limit)
    return RecursoSelectors.get_all(db, skip=skip, limit=limit)


@router.get("/{id_recurso}", response_model=RecursoResponse)
def get_recurso(id_recurso: int, db: Session = Depends(get_db)):
    """Obtiene un recurso por su ID."""
    recurso = RecursoSelectors.get_by_id(db, id_recurso)
    if not recurso:
        raise HTTPException(status_code=404, detail="Recurso no encontrado")
    return recurso


@router.post("/", response_model=RecursoResponse, status_code=201)
def create_recurso(recurso_data: RecursoCreate, db: Session = Depends(get_db)):
    """Crea un nuevo recurso."""
    return RecursoService.create(db, recurso_data)


@router.put("/{id_recurso}", response_model=RecursoResponse)
def update_recurso(
    id_recurso: int, recurso_data: RecursoUpdate, db: Session = Depends(get_db)
):
    """Actualiza un recurso."""
    return RecursoService.update(db, id_recurso, recurso_data)
