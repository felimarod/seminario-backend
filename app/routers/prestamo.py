from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from  models.prestamo import Prestamo
from  database import get_db

router = APIRouter(prefix="/prestamo", tags=["Prestamo"])

@router.get("/", response_model=list)
def get_all(db: Session = Depends(get_db)):
    return db.query(Prestamo).all()

@router.get("/{id}")
def get_by_id(id: int, db: Session = Depends(get_db)):
    prestamo = db.query(Prestamo).filter(Prestamo.id_prestamo == id).first()
    if not prestamo:
        raise HTTPException(status_code=404, detail="No encontrado")
    return prestamo

@router.post("/")
def create(prestamo: dict, db: Session = Depends(get_db)):
    obj = Prestamo(**prestamo)
    db.add(obj)
    db.commit()
    db.refresh(obj)
    return obj

@router.put("/{id}")
def update(id: int, prestamo: dict, db: Session = Depends(get_db)):
    obj = db.query(Prestamo).filter(Prestamo.id_prestamo == id).first()
    if not obj:
        raise HTTPException(status_code=404, detail="No encontrado")
    for k, v in prestamo.items():
        setattr(obj, k, v)
    db.commit()
    db.refresh(obj)
    return obj

@router.delete("/{id}")
def delete(id: int, db: Session = Depends(get_db)):
    obj = db.query(Prestamo).filter(Prestamo.id_prestamo == id).first()
    if not obj:
        raise HTTPException(status_code=404, detail="No encontrado")
    db.delete(obj)
    db.commit()
    return {"ok": True}
