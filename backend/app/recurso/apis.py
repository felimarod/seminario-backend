"""API routes para Recurso."""

from typing import List

from fastapi import APIRouter, Depends, HTTPException, Query, Request, UploadFile, File, Form
from sqlalchemy.orm import Session

from app.common.dependencies import get_db
from app.recurso.schemas import (
    RecursoCreate,
    RecursoResponse,
    RecursoUpdate,
)
from app.recurso.selectors import RecursoSelectors
from app.tipo_recurso.selectors import TipoRecursoSelectors
from app.recurso.services import RecursoService

router = APIRouter()


@router.get("/", response_model=List[RecursoResponse])
def get_recursos(
    request: Request,
    id_unidad: int = Query(None, description="Filtrar por tipo de recurso"),
    skip: int = Query(0, ge=0),
    limit: int = Query(100, ge=1, le=1000),
    db: Session = Depends(get_db),
):
    """Obtiene recursos, opcionalmente filtrados por tipo de recurso."""
    user = request.state.user
    if user["tipo"] in (2,3):
        id_unidad = user["unidad"]
    recursos = []
    if id_unidad:
        recursos =  RecursoSelectors.get_by_unidad(db, id_unidad, skip=skip, limit=limit)
    else: recursos = RecursoSelectors.get_all(db, skip=skip, limit=limit)
    
    recursosRes = []
    for recurso in recursos:
        recursosRes.append(RecursoResponse.parse_image(recurso_db=recurso))
    
    return recursosRes

@router.get("/{tipo}", response_model=List[RecursoResponse])
def get_recursos(
    tipo: int,
    skip: int = Query(0, ge=0),
    limit: int = Query(100, ge=1, le=1000),
    db: Session = Depends(get_db),
):
    """Obtiene recursos, opcionalmente filtrados por tipo de recurso."""
    if tipo:
        recursos =  RecursoSelectors.get_by_tipo_recurso(db, tipo, skip=skip, limit=limit)
    else: recursos = RecursoSelectors.get_all(db, skip=skip, limit=limit)
    
    recursosRes = []
    for recurso in recursos:
        recursosRes.append(RecursoResponse.parse_image(recurso_db=recurso))
    
    return recursosRes

@router.get("/{id_recurso}", response_model=RecursoResponse)
def get_recurso(id_recurso: int, db: Session = Depends(get_db)):
    """Obtiene un recurso por su ID."""
    recurso = RecursoSelectors.get_by_id(db, id_recurso)
    if not recurso:
        raise HTTPException(status_code=404, detail="Recurso no encontrado")
    
    return RecursoResponse.parse_image(recurso_db=recurso)


@router.post("/", response_model=RecursoResponse, status_code=201)
async def create_recurso(request:Request, 
                        nombre_recurso: str = Form(...),
                        descripcion_recurso: str = Form(...),
                        estado_recurso: str = Form(None),
                        id_tipo_recurso: int = Form(...),
                        foto_recurso: UploadFile = File(None), 
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
    
    contenido = None
    if foto_recurso:
        contenido = await foto_recurso.read()
    if estado_recurso is "":
        estado_recurso = "Disponible"
    recurso_data = RecursoCreate(
        nombre_recurso = nombre_recurso,
        descripcion_recurso = descripcion_recurso,
        estado_recurso = estado_recurso,
        id_tipo_recurso = id_tipo_recurso)
    
    recursoDB = RecursoService.create(db, recurso_data, foto_recurso=contenido)
    return RecursoResponse.parse_image(recursoDB)


@router.put("/{id_recurso}", response_model=RecursoResponse)
def update_recurso(
    id_recurso: int, recurso_data: RecursoUpdate, db: Session = Depends(get_db)
):
    """Actualiza un recurso."""
    return RecursoService.update(db, id_recurso, recurso_data)
