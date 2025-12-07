"""API routes para Recurso."""

from typing import List

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
from app.unidad.selectors import UnidadSelectors
from app.horario.selectors import HorarioSelectors
from app.recurso.services import RecursoService


router = APIRouter()


@router.get("/{id_recurso}", response_model=RecursoResponse)
def get_recurso(id_recurso: str, db: Session = Depends(get_db)):
    """Obtiene un recurso por su ID."""
    recurso = RecursoSelectors.get_by_id(db, id_recurso)
    if recurso is None:
        raise HTTPException(status_code=404, detail="Recurso no encontrado")
    recurso.nombre_tipo = TipoRecursoSelectors.get_by_id(
        db=db, id_tipo_recurso=recurso.id_tipo_recurso
    ).nombre_tipo_recurso
    return RecursoResponse.parse_image(recurso_db=recurso)


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
    recursos = []
    recursos = RecursoSelectors.get_filter(db=db,filtros=filtros,skip=skip,limit=limit)
    
    for recurso in recursos:
        tipo_recurso = TipoRecursoSelectors.get_by_id(db=db,id_tipo_recurso=recurso.id_tipo_recurso)
        recurso.nombre_tipo = tipo_recurso.nombre_tipo_recurso
        unidad = UnidadSelectors.get_by_id(db=db,id_unidad=tipo_recurso.id_unidad)
        recurso.unidad = {"id_unidad": unidad.id_unidad, "nombre_unidad": unidad.nombre_unidad}
        recurso.horario_disponible = {}
        Horario = HorarioSelectors.get_detaills_by_id(db=db, id_horario=tipo_recurso.horario_disponibilidad)
        for detalle in Horario:
            recurso.horario_disponible[detalle.dia_semana] = {
                "hora_inicio": str(detalle.hora_apertura),
                "hora_fin": str(detalle.hora_cierre)
            }
    recursosRes = []
    for recurso in recursos:
        recursosRes.append(RecursoResponse.parse_image(recurso_db=recurso))
    
    return recursosRes


@router.post("/create", response_model=RecursoResponse, status_code=201)
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
    if estado_recurso == "":
        estado_recurso = "Disponible"
    recurso_data = RecursoCreate(
        nombre_recurso = nombre_recurso,
        descripcion_recurso = descripcion_recurso,
        estado_recurso = estado_recurso,
        id_tipo_recurso = id_tipo_recurso)
    
    recursoDB = RecursoService.create(db, recurso_data, foto_recurso=contenido)
    recursoDB.nombre_tipo = TipoRecursoSelectors.get_by_id(db=db,id_tipo_recurso=recursoDB.id_tipo_recurso).nombre_tipo_recurso
    return RecursoResponse.parse_image(recursoDB)


@router.put("/{id_recurso}", response_model=RecursoResponse)
def update_recurso(
    id_recurso: int, recurso_data: RecursoUpdate, db: Session = Depends(get_db)
):
    """Actualiza un recurso."""
    return RecursoService.update(db, id_recurso, recurso_data)
