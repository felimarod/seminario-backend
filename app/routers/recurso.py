from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from  models.recurso import Recurso
from  database import get_db

router = APIRouter(prefix="/recurso", tags=["Recurso"])

@router.get("/", response_model=list)
def get_all(db: Session = Depends(get_db)):
    return db.query(Recurso).all()

@router.get("/{id}")
def get_by_id(id: int, db: Session = Depends(get_db)):
    recurso = db.query(Recurso).filter(Recurso.id_recurso == id).first()
    if not recurso:
        raise HTTPException(status_code=404, detail="No encontrado")
    return recurso

@router.post("/")
def create(recurso: dict, db: Session = Depends(get_db)):
    obj = Recurso(**recurso)
    db.add(obj)
    db.commit()
    db.refresh(obj)
    return obj

@router.put("/{id}")
def update(id: int, recurso: dict, db: Session = Depends(get_db)):
    obj = db.query(Recurso).filter(Recurso.id_recurso == id).first()
    if not obj:
        raise HTTPException(status_code=404, detail="No encontrado")
    for k, v in recurso.items():
        setattr(obj, k, v)
    db.commit()
    db.refresh(obj)
    return obj

@router.delete("/{id}")
def delete(id: int, db: Session = Depends(get_db)):
    obj = db.query(Recurso).filter(Recurso.id_recurso == id).first()
    if not obj:
        raise HTTPException(status_code=404, detail="No encontrado")
    db.delete(obj)
    db.commit()
    return {"ok": True}
