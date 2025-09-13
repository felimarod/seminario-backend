"""API routes para Usuario."""

from typing import List

from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.usuario.schemas import (
    UsuarioCreate,
    UsuarioResponse,
    UsuarioUpdate,
    UsuarioWithUnidad,
)
from app.usuario.selectors import UsuarioSelectors
from app.usuario.services import UsuarioService

router = APIRouter(prefix="/usuarios", tags=["usuario"])


@router.get("/", response_model=List[UsuarioResponse])
def get_usuarios(
    unidad_id: int = Query(None, description="Filtrar por unidad"),
    skip: int = Query(0, ge=0),
    limit: int = Query(100, ge=1, le=1000),
    db: Session = Depends(get_db),
):
    """Obtiene usuarios, opcionalmente filtrados por unidad."""
    if unidad_id:
        return UsuarioSelectors.get_by_unidad(db, unidad_id, skip=skip, limit=limit)
    return []


@router.get("/{usuario_id}", response_model=UsuarioWithUnidad)
def get_usuario(usuario_id: int, db: Session = Depends(get_db)):
    """Obtiene un usuario por su ID."""
    usuario = UsuarioSelectors.get_by_id(db, usuario_id)
    if not usuario:
        raise HTTPException(status_code=404, detail="Usuario no encontrado")
    return usuario


@router.post("/", response_model=UsuarioResponse, status_code=201)
def create_usuario(usuario_data: UsuarioCreate, db: Session = Depends(get_db)):
    """Crea un nuevo usuario."""
    return UsuarioService.create(db, usuario_data)


@router.put("/{usuario_id}", response_model=UsuarioResponse)
def update_usuario(
    usuario_id: int, usuario_data: UsuarioUpdate, db: Session = Depends(get_db)
):
    """Actualiza un usuario."""
    return UsuarioService.update(db, usuario_id, usuario_data)
