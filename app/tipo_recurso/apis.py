"""API routes para TipoRecurso."""

from typing import List

from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.tipo_recurso.schemas import (
    TipoRecursoCreate,
    TipoRecursoResponse,
    TipoRecursoUpdate,
)
from app.tipo_recurso.selectors import TipoRecursoSelectors
from app.tipo_recurso.services import TipoRecursoService

router = APIRouter(prefix="/tipos-recurso", tags=["tipo_recurso"])


@router.get("/", response_model=List[TipoRecursoResponse])
def get_tipos_recurso(
    unidad_id: int = Query(None, description="Filtrar por unidad"),
    skip: int = Query(0, ge=0),
    limit: int = Query(100, ge=1, le=1000),
    db: Session = Depends(get_db),
):
    """Obtiene tipos de recurso, opcionalmente filtrados por unidad."""
    if unidad_id:
        return TipoRecursoSelectors.get_by_unidad(db, unidad_id, skip=skip, limit=limit)
    return []


@router.get("/{tipo_id}", response_model=TipoRecursoResponse)
def get_tipo_recurso(tipo_id: int, db: Session = Depends(get_db)):
    """Obtiene un tipo de recurso por su ID."""
    tipo = TipoRecursoSelectors.get_by_id(db, tipo_id)
    if not tipo:
        raise HTTPException(status_code=404, detail="Tipo de recurso no encontrado")
    return tipo


@router.post("/", response_model=TipoRecursoResponse, status_code=201)
def create_tipo_recurso(tipo_data: TipoRecursoCreate, db: Session = Depends(get_db)):
    """Crea un nuevo tipo de recurso."""
    return TipoRecursoService.create(db, tipo_data)


@router.put("/{tipo_id}", response_model=TipoRecursoResponse)
def update_tipo_recurso(
    tipo_id: int, tipo_data: TipoRecursoUpdate, db: Session = Depends(get_db)
):
    """Actualiza un tipo de recurso."""
    return TipoRecursoService.update(db, tipo_id, tipo_data)
