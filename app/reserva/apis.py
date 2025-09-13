"""API routes para Reserva."""

from typing import List

from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.reserva.schemas import (
    ReservaCreate,
    ReservaDetallada,
    ReservaResponse,
    ReservaUpdate,
)
from app.reserva.selectors import ReservaSelectors
from app.reserva.services import ReservaService

router = APIRouter(prefix="/reservas", tags=["reserva"])


@router.get("/", response_model=List[ReservaResponse])
def get_reservas(
    usuario_id: int = Query(None, description="Filtrar por usuario"),
    recurso_id: int = Query(None, description="Filtrar por recurso"),
    estado: str = Query(None, description="Filtrar por estado"),
    skip: int = Query(0, ge=0),
    limit: int = Query(100, ge=1, le=1000),
    db: Session = Depends(get_db),
):
    """Obtiene reservas con filtros opcionales."""
    if usuario_id:
        return ReservaSelectors.get_by_usuario(db, usuario_id, skip=skip, limit=limit)
    elif recurso_id:
        return ReservaSelectors.get_by_recurso(db, recurso_id, skip=skip, limit=limit)
    elif estado:
        return ReservaSelectors.get_by_estado(db, estado, skip=skip, limit=limit)
    return []


@router.get("/{reserva_id}", response_model=ReservaDetallada)
def get_reserva(reserva_id: int, db: Session = Depends(get_db)):
    """Obtiene una reserva por su ID."""
    reserva = ReservaSelectors.get_by_id(db, reserva_id)
    if not reserva:
        raise HTTPException(status_code=404, detail="Reserva no encontrada")
    return reserva


@router.post("/", response_model=ReservaResponse, status_code=201)
def create_reserva(reserva_data: ReservaCreate, db: Session = Depends(get_db)):
    """Crea una nueva reserva."""
    return ReservaService.create(db, reserva_data)


@router.put("/{reserva_id}", response_model=ReservaResponse)
def update_reserva(
    reserva_id: int, reserva_data: ReservaUpdate, db: Session = Depends(get_db)
):
    """Actualiza una reserva."""
    return ReservaService.update(db, reserva_id, reserva_data)
