"""API routes para Usuario."""

from typing import List

from fastapi import APIRouter, Depends, HTTPException, Query
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.usuario.schemas import (
    UsuarioCreate,
    UsuarioResponse,
    UsuarioUpdate,
)
from app.usuario.selectors import UsuarioSelectors
from app.usuario.services import UsuarioService
from app.common.dependencies import get_current_user

router = APIRouter()


@router.get("/", response_model=List[UsuarioResponse])
def get_usuarios(
    id_tipo_usuario: int = Query(None, description="Filtrar por unidad"),
    skip: int = Query(0, ge=0),
    limit: int = Query(100, ge=1, le=1000),
    db: Session = Depends(get_db),
    current_user = Depends(get_current_user),
):
    """Obtiene usuarios, opcionalmente filtrados por unidad."""
    if current_user.id_tipo_usuario != 1:
        raise HTTPException(status_code=403, detail="No tienes permiso para ver esta información")
    if id_tipo_usuario:
        return UsuarioSelectors.get_by_tipo_usuario(db, id_tipo_usuario, skip=skip, limit=limit)
    return UsuarioSelectors.get_all(db, skip=skip, limit=limit)


@router.get("/{id_usuario}", response_model=UsuarioResponse)
def get_usuario(id_usuario: int, db: Session = Depends(get_db)):
    """Obtiene un usuario por su ID."""
    usuario = UsuarioSelectors.get_by_id(db, id_usuario)
    if not usuario:
        raise HTTPException(status_code=404, detail="Usuario no encontrado")
    return usuario


@router.post("/", response_model=UsuarioResponse, status_code=201)
def create_usuario(usuario_data: UsuarioCreate, db: Session = Depends(get_db)):
    """Crea un nuevo usuario."""
    return UsuarioService.create(db, usuario_data)


@router.put("/{id_usuario}", response_model=UsuarioResponse)
def update_usuario(
    id_usuario: int, usuario_data: UsuarioUpdate, db: Session = Depends(get_db)
):
    """Actualiza un usuario."""
    return UsuarioService.update(db, id_usuario, usuario_data)
