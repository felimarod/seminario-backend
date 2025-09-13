from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from  models.tipo_recurso import TipoRecurso
from  database import get_db

router = APIRouter(prefix="/tipo_recurso", tags=["TipoRecurso"])

@router.get("/", response_model=list)
def get_all(db: Session = Depends(get_db)):
    return db.query(TipoRecurso).all()

@router.get("/{id}")
def get_by_id(id: int, db: Session = Depends(get_db)):
    tipo = db.query(TipoRecurso).filter(TipoRecurso.id_tipo == id).first()
    if not tipo:
        raise HTTPException(status_code=404, detail="No encontrado")
    return tipo

@router.post("/")
def create(tipo: dict, db: Session = Depends(get_db)):
    obj = TipoRecurso(**tipo)
    db.add(obj)
    db.commit()
    db.refresh(obj)
    return obj

@router.put("/{id}")
def update(id: int, tipo: dict, db: Session = Depends(get_db)):
    obj = db.query(TipoRecurso).filter(TipoRecurso.id_tipo == id).first()
    if not obj:
        raise HTTPException(status_code=404, detail="No encontrado")
    for k, v in tipo.items():
        setattr(obj, k, v)
    db.commit()
    db.refresh(obj)
    return obj

@router.delete("/{id}")
def delete(id: int, db: Session = Depends(get_db)):
    obj = db.query(TipoRecurso).filter(TipoRecurso.id_tipo == id).first()
    if not obj:
        raise HTTPException(status_code=404, detail="No encontrado")
    db.delete(obj)
    db.commit()
    return {"ok": True}
