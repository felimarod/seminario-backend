"""API routes para tipo recurso."""

from typing import List

from fastapi import APIRouter, Depends, HTTPException, Query, Request
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.historial_transaccion.schemas import (
    HistorialTransaccionResponse
)
from app.historial_transaccion.selectors import HistorialTransaccionSelectors

router = APIRouter()


@router.get("/", response_model=List[HistorialTransaccionResponse])
def get_tipo_recurso(
    request: Request,
    db: Session = Depends(get_db),
):
    """Obtiene un historial_transaccion por su ID."""
    historial = HistorialTransaccionSelectors.get_all(db=db)
    return [HistorialTransaccionResponse.from_historial_db(h) for h in historial]