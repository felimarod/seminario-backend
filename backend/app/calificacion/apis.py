"""API routes para Calificacion."""

from typing import List

from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.calificacion.schemas import (
    CalificacionCreate,
    CalificacionResponse,
    CalificacionUpdate,
)
from app.calificacion.selectors import CalificacionSelectors
from app.calificacion.services import CalificacionService

router = APIRouter()


@router.get("/", response_model=List[CalificacionResponse])
def get_calificacions(
    id_transaccion: int = Query(None, description="Filtrar por transaccion"),
    skip: int = Query(0, ge=0),
    limit: int = Query(100, ge=1, le=1000),
    db: Session = Depends(get_db),
):
    """Obtiene calificacions, opcionalmente filtrados por transaccion."""
    if id_transaccion:
        return CalificacionSelectors.get_by_transaccion(db, id_transaccion, skip=skip, limit=limit)
    return CalificacionSelectors.get_all(db, skip=skip, limit=limit)


@router.get("/{id_calificacion}", response_model=CalificacionResponse)
def get_calificacion(id_calificacion: int, db: Session = Depends(get_db)):
    """Obtiene un calificacion por su ID."""
    calificacion = CalificacionSelectors.get_by_id(db, id_calificacion)
    if not calificacion:
        raise HTTPException(status_code=404, detail="Calificacion no encontrada")
    return calificacion


@router.post("/", response_model=CalificacionResponse, status_code=201)
def create_calificacion(calificacion_data: CalificacionCreate, db: Session = Depends(get_db)):
    """Crea una nueva calificacion."""
    return CalificacionService.create(db, calificacion_data)


@router.put("/{id_calificacion}", response_model=CalificacionResponse)
def update_calificacion(
    id_calificacion: int, calificacion_data: CalificacionUpdate, db: Session = Depends(get_db)
):
    """Actualiza una calificacion."""
    return CalificacionService.update(db, id_calificacion, calificacion_data)
