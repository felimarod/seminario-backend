"""API routes para Calificacion."""

from typing import List

from app.calificacion.schemas import CalificacionCreate, CalificacionResponse
from app.calificacion.selectors import CalificacionSelectors
from app.calificacion.services import CalificacionService
from app.common.dependencies import get_db
from fastapi import APIRouter, Depends, HTTPException, Query, Request
from sqlalchemy.orm import Session

router = APIRouter()


@router.get("/", response_model=List[CalificacionResponse])
def get_calificacions(
    skip: int = Query(0, ge=0),
    limit: int = Query(100, ge=1, le=1000),
    db: Session = Depends(get_db),
):
    """Obtiene calificacions, opcionalmente filtrados por transaccion."""
    calificaciones = CalificacionSelectors.get_all(db, skip=skip, limit=limit)
    return [
        CalificacionResponse.from_calificacion_db(calificacion)
        for calificacion in calificaciones
    ]


@router.post("/create", response_model=CalificacionResponse, status_code=201)
def create_calificacion(
    request: Request,
    calificacion_data: CalificacionCreate,
    db: Session = Depends(get_db),
):
    """Crea una nueva calificacion."""
    user = request.state.user  # Obtener el usuario del request,
    if user["tipo"] != 4:  # ID 4 es el rol de 'cliente'
        raise HTTPException(
            status_code=403,
            detail="Solo los usuarios tienen permiso para crear una calificación.",
        )

    calificacion = CalificacionService.create(db, calificacion_data, user["id"])
    return CalificacionResponse.from_calificacion_db(calificacion)
