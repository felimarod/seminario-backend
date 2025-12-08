"""API routes para Usuario."""

from typing import List

from fastapi import APIRouter, Depends, HTTPException, Query, Request
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.usuario.schemas import (
    UsuarioCreate,
    UsuarioResponse,
    UsuarioUpdate,
)
from app.usuario.selectors import UsuarioSelectors
from app.usuario.services import UsuarioService

router = APIRouter()


# @router.get("/", response_model=List[UsuarioResponse])
# def get_usuarios(
#     request: Request,
#     id_tipo_usuario: int = Query(None, description="Filtrar por unidad"),
#     skip: int = Query(0, ge=0),
#     limit: int = Query(100, ge=1, le=1000),
#     db: Session = Depends(get_db)
# ):
#     """Obtiene usuarios, opcionalmente filtrados por unidad."""
#     user = request.state.user
#     if user["tipo"] != 1:
#         raise HTTPException(status_code=403, detail="No tienes permiso para ver esta información")
#     if id_tipo_usuario:
#         return UsuarioSelectors.get_by_tipo_usuario(db, id_tipo_usuario, skip=skip, limit=limit)
#     return UsuarioSelectors.get_all(db, skip=skip, limit=limit)


@router.get("/{correo_usuario}", response_model=UsuarioResponse)
def get_usuario_by_correo(correo_usuario: str,request: Request, db: Session = Depends(get_db)):
    """Obtiene un usuario por su correo."""
    user = request.state.user
    if user["tipo"] == 4:
        raise HTTPException(status_code=403, detail="No tienes permiso para ver esta información")
    usuario = UsuarioSelectors.get_by_correo(db, correo_usuario)
    if not usuario:
        raise HTTPException(status_code=404, detail="Usuario no encontrado")
    return UsuarioResponse.from_usuario_db(usuario)


# @router.post("/", response_model=UsuarioResponse, status_code=201)
# def create_usuario(usuario_data: UsuarioCreate, request: Request, db: Session = Depends(get_db)):
#     """Crea un nuevo usuario."""
#     user = request.state.user
#     if user["tipo"] != 1:
#         raise HTTPException(status_code=403, detail="No tienes permiso para ver esta información")
#     return UsuarioService.create(db, usuario_data)

