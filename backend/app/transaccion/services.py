"""Service para operaciones con Transaccion."""

from fastapi import HTTPException, status
from sqlalchemy.orm import Session

from app.transaccion.models import Transaccion
from app.transaccion.schemas import TransaccionCreate, TransaccionUpdate
from app.transaccion.selectors import TransaccionSelectors


class TransaccionService:
    """Service para operaciones con Transaccion."""

    @staticmethod
    def create(db: Session, transaccion_data: TransaccionCreate) -> Transaccion:
        """Crea un nuevo transaccion."""
        # existing_transaccion = TransaccionSelectors.get_by_correo(db, transaccion_data.correo)
        # if existing_transaccion:
        #     raise HTTPException(
        #         status_code=status.HTTP_400_BAD_REQUEST,
        #         detail="Ya existe un transaccion con este correo",
        #     )
        db_transaccion = Transaccion(**transaccion_data.model_dump())
        db.add(db_transaccion)
        db.commit()
        db.refresh(db_transaccion)
        return db_transaccion

    @staticmethod
    def update(db: Session, id_transaccion: int, transaccion_data: TransaccionUpdate) -> Transaccion:
        """Actualiza un transaccion existente."""
        db_transaccion = TransaccionSelectors.get_by_id(db, id_transaccion)
        if not db_transaccion:
            raise HTTPException(
                status_code=status.HTTP_404_NOT_FOUND, detail="Transaccion no encontrado"
            )
        for field, value in transaccion_data.model_dump(exclude_unset=True).items():
            setattr(db_transaccion, field, value)
        db.commit()
        db.refresh(db_transaccion)
        return db_transaccion
