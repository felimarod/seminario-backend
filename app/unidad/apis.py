"""API routes para Unidad."""

from typing import List

from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.unidad.schemas import UnidadCreate, UnidadResponse, UnidadUpdate
from app.unidad.selectors import UnidadSelectors
from app.unidad.services import UnidadService

router = APIRouter(prefix="/unidades", tags=["unidad"])


@router.get("/", response_model=List[UnidadResponse])
def get_unidades(
    skip: int = Query(0, ge=0),
    limit: int = Query(100, ge=1, le=1000),
    db: Session = Depends(get_db),
):
    """Obtiene todas las unidades."""
    return UnidadSelectors.get_all(db, skip=skip, limit=limit)


@router.get("/{unidad_id}", response_model=UnidadResponse)
def get_unidad(unidad_id: int, db: Session = Depends(get_db)):
    """Obtiene una unidad por su ID."""
    unidad = UnidadSelectors.get_by_id(db, unidad_id)
    if not unidad:
        raise HTTPException(status_code=404, detail="Unidad no encontrada")
    return unidad


@router.post("/", response_model=UnidadResponse, status_code=201)
def create_unidad(unidad_data: UnidadCreate, db: Session = Depends(get_db)):
    """Crea una nueva unidad."""
    return UnidadService.create(db, unidad_data)


@router.put("/{unidad_id}", response_model=UnidadResponse)
def update_unidad(
    unidad_id: int, unidad_data: UnidadUpdate, db: Session = Depends(get_db)
):
    """Actualiza una unidad existente."""
    return UnidadService.update(db, unidad_id, unidad_data)


@router.delete("/{unidad_id}", status_code=204)
def delete_unidad(unidad_id: int, db: Session = Depends(get_db)):
    """Elimina una unidad."""
    UnidadService.delete(db, unidad_id)
