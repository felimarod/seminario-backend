"""API routes para tipo recurso."""

from typing import List

from fastapi import APIRouter, Depends, HTTPException, Query, Request
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.estado_transaccion.schemas import (
    EstadoTransaccionResponse
)
from app.estado_transaccion.selectors import EstadoTransaccionSelectors

router = APIRouter()


@router.get("/", response_model=List[EstadoTransaccionResponse])
def get_tipo_recurso(
    request: Request,
    db: Session = Depends(get_db),
):
    """Obtiene un estado_transaccion por su ID."""
    estados = EstadoTransaccionSelectors.get_all(db=db)
    return [EstadoTransaccionResponse.from_estado_transaccion_db(e) for e in estados]