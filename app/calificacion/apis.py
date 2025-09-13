"""API routes para Calificacion."""

from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session

from app.calificacion.schemas import (
    CalificacionCreate,
    CalificacionResponse,
    CalificacionUpdate,
)
from app.calificacion.selectors import CalificacionSelectors
from app.calificacion.services import CalificacionService
from app.common.dependencies import get_db

router = APIRouter(prefix="/calificaciones", tags=["calificacion"])


@router.get("/{calificacion_id}", response_model=CalificacionResponse)
def get_calificacion(calificacion_id: int, db: Session = Depends(get_db)):
    """Obtiene una calificación por su ID."""
    calificacion = CalificacionSelectors.get_by_id(db, calificacion_id)
    if not calificacion:
        raise HTTPException(status_code=404, detail="Calificación no encontrada")
    return calificacion


@router.post("/", response_model=CalificacionResponse, status_code=201)
def create_calificacion(
    calificacion_data: CalificacionCreate, db: Session = Depends(get_db)
):
    """Crea una nueva calificación."""
    return CalificacionService.create(db, calificacion_data)


@router.put("/{calificacion_id}", response_model=CalificacionResponse)
def update_calificacion(
    calificacion_id: int,
    calificacion_data: CalificacionUpdate,
    db: Session = Depends(get_db),
):
    """Actualiza una calificación."""
    return CalificacionService.update(db, calificacion_id, calificacion_data)
