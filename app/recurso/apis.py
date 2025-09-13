"""API routes para Recurso."""

from typing import List

from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.recurso.schemas import (
    RecursoCreate,
    RecursoResponse,
    RecursoUpdate,
    RecursoWithTipo,
)
from app.recurso.selectors import RecursoSelectors
from app.recurso.services import RecursoService

router = APIRouter(prefix="/recursos", tags=["recurso"])


@router.get("/", response_model=List[RecursoResponse])
def get_recursos(
    tipo_id: int = Query(None, description="Filtrar por tipo"),
    nombre: str = Query(None, description="Buscar por nombre"),
    skip: int = Query(0, ge=0),
    limit: int = Query(100, ge=1, le=1000),
    db: Session = Depends(get_db),
):
    """Obtiene recursos con filtros opcionales."""
    if tipo_id:
        return RecursoSelectors.get_by_tipo(db, tipo_id, skip=skip, limit=limit)
    elif nombre:
        return RecursoSelectors.search_by_nombre(db, nombre, skip=skip, limit=limit)
    return []


@router.get("/{recurso_id}", response_model=RecursoWithTipo)
def get_recurso(recurso_id: int, db: Session = Depends(get_db)):
    """Obtiene un recurso por su ID."""
    recurso = RecursoSelectors.get_by_id(db, recurso_id)
    if not recurso:
        raise HTTPException(status_code=404, detail="Recurso no encontrado")
    return recurso


@router.post("/", response_model=RecursoResponse, status_code=201)
def create_recurso(recurso_data: RecursoCreate, db: Session = Depends(get_db)):
    """Crea un nuevo recurso."""
    return RecursoService.create(db, recurso_data)


@router.put("/{recurso_id}", response_model=RecursoResponse)
def update_recurso(
    recurso_id: int, recurso_data: RecursoUpdate, db: Session = Depends(get_db)
):
    """Actualiza un recurso."""
    return RecursoService.update(db, recurso_id, recurso_data)
