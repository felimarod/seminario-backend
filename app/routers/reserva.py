from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from  models.reserva import Reserva
from  database import get_db

router = APIRouter(prefix="/reserva", tags=["Reserva"])

@router.get("/", response_model=list)
def get_all(db: Session = Depends(get_db)):
    return db.query(Reserva).all()

@router.get("/{id}")
def get_by_id(id: int, db: Session = Depends(get_db)):
    reserva = db.query(Reserva).filter(Reserva.id_reserva == id).first()
    if not reserva:
        raise HTTPException(status_code=404, detail="No encontrado")
    return reserva

@router.post("/")
def create(reserva: dict, db: Session = Depends(get_db)):
    obj = Reserva(**reserva)
    db.add(obj)
    db.commit()
    db.refresh(obj)
    return obj

@router.put("/{id}")
def update(id: int, reserva: dict, db: Session = Depends(get_db)):
    obj = db.query(Reserva).filter(Reserva.id_reserva == id).first()
    if not obj:
        raise HTTPException(status_code=404, detail="No encontrado")
    for k, v in reserva.items():
        setattr(obj, k, v)
    db.commit()
    db.refresh(obj)
    return obj

@router.delete("/{id}")
def delete(id: int, db: Session = Depends(get_db)):
    obj = db.query(Reserva).filter(Reserva.id_reserva == id).first()
    if not obj:
        raise HTTPException(status_code=404, detail="No encontrado")
    db.delete(obj)
    db.commit()
    return {"ok": True}
