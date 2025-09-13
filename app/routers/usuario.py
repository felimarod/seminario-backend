from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from  models.usuario import Usuario
from  database import get_db

router = APIRouter(prefix="/usuario", tags=["Usuario"])

@router.get("/", response_model=list)
def get_all(db: Session = Depends(get_db)):
    return db.query(Usuario).all()

@router.get("/{id}")
def get_by_id(id: int, db: Session = Depends(get_db)):
    usuario = db.query(Usuario).filter(Usuario.id_usuario == id).first()
    if not usuario:
        raise HTTPException(status_code=404, detail="No encontrado")
    return usuario

@router.post("/")
def create(usuario: dict, db: Session = Depends(get_db)):
    obj = Usuario(**usuario)
    db.add(obj)
    db.commit()
    db.refresh(obj)
    return obj

@router.put("/{id}")
def update(id: int, usuario: dict, db: Session = Depends(get_db)):
    obj = db.query(Usuario).filter(Usuario.id_usuario == id).first()
    if not obj:
        raise HTTPException(status_code=404, detail="No encontrado")
    for k, v in usuario.items():
        setattr(obj, k, v)
    db.commit()
    db.refresh(obj)
    return obj

@router.delete("/{id}")
def delete(id: int, db: Session = Depends(get_db)):
    obj = db.query(Usuario).filter(Usuario.id_usuario == id).first()
    if not obj:
        raise HTTPException(status_code=404, detail="No encontrado")
    db.delete(obj)
    db.commit()
    return {"ok": True}
