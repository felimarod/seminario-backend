from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from  models.devolucion import Devolucion
from  database import get_db

router = APIRouter(prefix="/devolucion", tags=["Devolucion"])

@router.get("/", response_model=list)
def get_all(db: Session = Depends(get_db)):
    return db.query(Devolucion).all()

@router.get("/{id}")
def get_by_id(id: int, db: Session = Depends(get_db)):
    devolucion = db.query(Devolucion).filter(Devolucion.id_devolucion == id).first()
    if not devolucion:
        raise HTTPException(status_code=404, detail="No encontrado")
    return devolucion

@router.post("/")
def create(devolucion: dict, db: Session = Depends(get_db)):
    obj = Devolucion(**devolucion)
    db.add(obj)
    db.commit()
    db.refresh(obj)
    return obj

@router.put("/{id}")
def update(id: int, devolucion: dict, db: Session = Depends(get_db)):
    obj = db.query(Devolucion).filter(Devolucion.id_devolucion == id).first()
    if not obj:
        raise HTTPException(status_code=404, detail="No encontrado")
    for k, v in devolucion.items():
        setattr(obj, k, v)
    db.commit()
    db.refresh(obj)
    return obj

@router.delete("/{id}")
def delete(id: int, db: Session = Depends(get_db)):
    obj = db.query(Devolucion).filter(Devolucion.id_devolucion == id).first()
    if not obj:
        raise HTTPException(status_code=404, detail="No encontrado")
    db.delete(obj)
    db.commit()
    return {"ok": True}
