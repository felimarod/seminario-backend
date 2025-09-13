from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from  models.unidad import Unidad
from  database import get_db

router = APIRouter(prefix="/unidad", tags=["Unidad"])

@router.get("/", response_model=list)
def get_all(db: Session = Depends(get_db)):
    return db.query(Unidad).all()

@router.get("/{id}")
def get_by_id(id: int, db: Session = Depends(get_db)):
    unidad = db.query(Unidad).filter(Unidad.id_unidad == id).first()
    if not unidad:
        raise HTTPException(status_code=404, detail="No encontrado")
    return unidad

@router.post("/")
def create(unidad: dict, db: Session = Depends(get_db)):
    obj = Unidad(**unidad)
    db.add(obj)
    db.commit()
    db.refresh(obj)
    return obj

@router.put("/{id}")
def update(id: int, unidad: dict, db: Session = Depends(get_db)):
    obj = db.query(Unidad).filter(Unidad.id_unidad == id).first()
    if not obj:
        raise HTTPException(status_code=404, detail="No encontrado")
    for k, v in unidad.items():
        setattr(obj, k, v)
    db.commit()
    db.refresh(obj)
    return obj

@router.delete("/{id}")
def delete(id: int, db: Session = Depends(get_db)):
    obj = db.query(Unidad).filter(Unidad.id_unidad == id).first()
    if not obj:
        raise HTTPException(status_code=404, detail="No encontrado")
    db.delete(obj)
    db.commit()
    return {"ok": True}
