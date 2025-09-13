"""API routes para Devolucion."""

from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.devolucion.schemas import DevolucionCreate, DevolucionResponse
from app.devolucion.selectors import DevolucionSelectors
from app.devolucion.services import DevolucionService

router = APIRouter(prefix="/devoluciones", tags=["devolucion"])


@router.get("/{devolucion_id}", response_model=DevolucionResponse)
def get_devolucion(devolucion_id: int, db: Session = Depends(get_db)):
    """Obtiene una devolución por su ID."""
    devolucion = DevolucionSelectors.get_by_id(db, devolucion_id)
    if not devolucion:
        raise HTTPException(status_code=404, detail="Devolución no encontrada")
    return devolucion


@router.post("/", response_model=DevolucionResponse, status_code=201)
def create_devolucion(devolucion_data: DevolucionCreate, db: Session = Depends(get_db)):
    """Crea una nueva devolución."""
    return DevolucionService.create(db, devolucion_data)
