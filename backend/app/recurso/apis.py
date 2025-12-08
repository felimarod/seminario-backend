"""API routes para Recurso."""

from typing import List, Optional

from fastapi import APIRouter, Depends, HTTPException, Query, Request, UploadFile, File, Form
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.recurso.schemas import (
    RecursoCreate,
    RecursoResponse,
    RecursoUpdate,
    Filtros
)
from app.recurso.selectors import RecursoSelectors
from app.tipo_recurso.selectors import TipoRecursoSelectors
from app.recurso.services import RecursoService


router = APIRouter()


@router.post("/", response_model=List[RecursoResponse])
def get_recursos(
    request: Request,
    filtros: Filtros,
    skip: int = Query(0, ge=0),
    limit: int = Query(100, ge=1, le=1000),
    db: Session = Depends(get_db),
):
    """Obtiene recursos, opcionalmente filtrados por tipo de recurso."""
    user = request.state.user
    if user["tipo"] in (2,3):
        filtros.id_unidad = user["unidad"]

    recursos = RecursoSelectors.get_filter(db=db,filtros=filtros,skip=skip,limit=limit)
    return [RecursoResponse.from_recurso_db(recurso_db=recurso) for recurso in recursos]


@router.post("/create", response_model=RecursoResponse, status_code=201)
async def create_recurso(request:Request, 
                        nombre_recurso: str = Form(...),
                        descripcion_recurso: str = Form(...),
                        id_tipo_recurso: int = Form(...),
                        foto_recurso: Optional[UploadFile] = File(None), 
                        db: Session = Depends(get_db)):
    """Crea un nuevo recurso."""
    
    user = request.state.user
    if user["tipo"] not in (1,2):
        raise HTTPException(status_code=403, detail="No tienes permiso para ver esta información")
    if user["tipo"] == 2:
        tipo_recurso = TipoRecursoSelectors.get_by_id(db, id_tipo_recurso)
        if tipo_recurso is None:
            raise HTTPException(status_code=403, detail="El tipo de recurso no existe")
        if tipo_recurso.id_unidad != user["unidad"]:
            raise HTTPException(status_code=403, detail="Este tipo de recursos no pertenece a tu unidad")
    
    contenido = await foto_recurso.read() if foto_recurso is not None else None
    
    recurso_data = RecursoCreate(
        nombre_recurso = nombre_recurso,
        descripcion_recurso = descripcion_recurso,
        id_tipo_recurso = id_tipo_recurso)
    
    recursoDB = RecursoService.create(db, recurso_data, foto_recurso=contenido)
    return RecursoResponse.from_recurso_db(recursoDB)

## TODO: Update recurso
# @router.put("/{id_recurso}", response_model=RecursoResponse)
# def update_recurso(
#     id_recurso: int, recurso_data: RecursoUpdate, db: Session = Depends(get_db)
# ):
#     """Actualiza un recurso."""
#     return RecursoService.update(db, id_recurso, recurso_data)
