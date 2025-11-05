"""API routes para Transaccion."""

from typing import List

from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.transaccion.schemas import (
    TransaccionCreate,
    TransaccionResponse,
    TransaccionUpdate,
)
from app.transaccion.selectors import TransaccionSelectors
from app.transaccion.services import TransaccionService

router = APIRouter()


@router.get("/", response_model=List[TransaccionResponse])
def get_transaccions(
    id_tipo_transaccion: int = Query(None, description="Filtrar por tipo de transaccion"),
    skip: int = Query(0, ge=0),
    limit: int = Query(100, ge=1, le=1000),
    db: Session = Depends(get_db),
):
    """Obtiene transaccions, opcionalmente filtrados por tipo de transaccion."""
    if id_tipo_transaccion:
        return TransaccionSelectors.get_by_tipo_transaccion(db, id_tipo_transaccion, skip=skip, limit=limit)
    return TransaccionSelectors.get_all(db, skip=skip, limit=limit)


@router.get("/{id_transaccion}", response_model=TransaccionResponse)
def get_transaccion(id_transaccion: int, db: Session = Depends(get_db)):
    """Obtiene un transaccion por su ID."""
    transaccion = TransaccionSelectors.get_by_id(db, id_transaccion)
    if not transaccion:
        raise HTTPException(status_code=404, detail="Transaccion no encontrado")
    return transaccion


@router.post("/", response_model=TransaccionResponse, status_code=201)
def create_transaccion(transaccion_data: TransaccionCreate, db: Session = Depends(get_db)):
    """Crea un nuevo transaccion."""
    return TransaccionService.create(db, transaccion_data)


@router.put("/{id_transaccion}", response_model=TransaccionResponse)
def update_transaccion(
    id_transaccion: int, transaccion_data: TransaccionUpdate, db: Session = Depends(get_db)
):
    """Actualiza un transaccion."""
    return TransaccionService.update(db, id_transaccion, transaccion_data)
