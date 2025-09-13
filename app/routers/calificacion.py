from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from  models.calificacion import Calificacion
from  database import get_db

router = APIRouter(prefix="/calificacion", tags=["Calificacion"])

@router.get("/", response_model=list)
def get_all(db: Session = Depends(get_db)):
    """Obtener todas las calificaciones"""
    return db.query(Calificacion).all()

@router.get("/{id}")
def get_by_id(id: int, db: Session = Depends(get_db)):
    """Obtener una calificación por ID"""
    calificacion = db.query(Calificacion).filter(Calificacion.id_calificacion == id).first()
    if not calificacion:
        raise HTTPException(status_code=404, detail="No encontrado")
    return calificacion

@router.post("/")
def create(calificacion: dict, db: Session = Depends(get_db)):
    """Crear una nueva calificación"""
    obj = Calificacion(**calificacion)
    db.add(obj)
    db.commit()
    db.refresh(obj)
    return obj

@router.put("/{id}")
def update(id: int, calificacion: dict, db: Session = Depends(get_db)):
    """Actualizar una calificación existente"""
    obj = db.query(Calificacion).filter(Calificacion.id_calificacion == id).first()
    if not obj:
        raise HTTPException(status_code=404, detail="No encontrado")
    for k, v in calificacion.items():
        setattr(obj, k, v)
    db.commit()
    db.refresh(obj)
    return obj

@router.delete("/{id}")
def delete(id: int, db: Session = Depends(get_db)):
    """Eliminar una calificación"""
    obj = db.query(Calificacion).filter(Calificacion.id_calificacion == id).first()
    if not obj:
        raise HTTPException(status_code=404, detail="No encontrado")
    db.delete(obj)
    db.commit()
    return {"ok": True}
