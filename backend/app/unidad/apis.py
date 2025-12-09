"""API routes para Unidad."""

from typing import List

from fastapi import APIRouter, Depends, HTTPException, Query, Request
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.unidad.schemas import (
    UnidadCreate,
    UnidadResponse
)
from app.unidad.selectors import UnidadSelectors
from app.unidad.services import UnidadService

router = APIRouter()


@router.get("/", response_model=List[UnidadResponse])
def get_unidades(
    skip: int = Query(0, ge=0),
    limit: int = Query(100, ge=1, le=1000),
    db: Session = Depends(get_db)
):
    """Obtiene unidades, opcionalmente filtrados por unidad."""
    return UnidadSelectors.get_all(db, skip=skip, limit=limit)

@router.post("/", response_model=UnidadResponse, status_code=201)
def create_unidad(unidad_data: UnidadCreate, request: Request, db: Session = Depends(get_db)):
    """Crea un nuevo unidad."""
    user = request.state.user
    if user["tipo"] != 1:
        raise HTTPException(status_code=400, detail="no tienes permisos para crear unidades")
    return UnidadService.create(db, unidad_data)

