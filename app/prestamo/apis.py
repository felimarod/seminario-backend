"""API routes para Prestamo."""

from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.prestamo.schemas import PrestamoCreate, PrestamoResponse
from app.prestamo.selectors import PrestamoSelectors
from app.prestamo.services import PrestamoService

router = APIRouter(prefix="/prestamos", tags=["prestamo"])


@router.get("/{prestamo_id}", response_model=PrestamoResponse)
def get_prestamo(prestamo_id: int, db: Session = Depends(get_db)):
    """Obtiene un préstamo por su ID."""
    prestamo = PrestamoSelectors.get_by_id(db, prestamo_id)
    if not prestamo:
        raise HTTPException(status_code=404, detail="Préstamo no encontrado")
    return prestamo


@router.post("/", response_model=PrestamoResponse, status_code=201)
def create_prestamo(prestamo_data: PrestamoCreate, db: Session = Depends(get_db)):
    """Crea un nuevo préstamo."""
    return PrestamoService.create(db, prestamo_data)
