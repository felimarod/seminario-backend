"""Selectors para el modelo Transaccion."""

from typing import List, Optional

from sqlalchemy.orm import Session

from app.transaccion.models import Transaccion


class TransaccionSelectors:
    """Selectors para el modelo Transaccion."""

    @staticmethod
    def get_by_id(db: Session, id_transaccion: int) -> Optional[Transaccion]:
        """Obtiene una transaccion por su ID."""
        return db.query(Transaccion).filter(Transaccion.id_transaccion == id_transaccion).first()

    @staticmethod
    def get_all(db: Session, skip: int = 0, limit: int = 100) -> List[Transaccion]:
        """Obtiene todos los transaccions con paginación."""
        return db.query(Transaccion).offset(skip).limit(limit).all()

    @staticmethod
    def get_by_tipo_transaccion(
        db: Session, id_tipo_transaccion: int, skip: int = 0, limit: int = 100
    ) -> List[Transaccion]:
        """Obtiene transaccions por un tipo de transaccion."""
        return (
            db.query(Transaccion)
            .filter(Transaccion.id_tipo_transaccion == id_tipo_transaccion)
            .offset(skip)
            .limit(limit)
            .all()
        )
    
    @staticmethod
    def get_by_usuario(
        db: Session, id_usuario: int, skip: int = 0, limit: int = 100
    ) -> List[Transaccion]:
        """Obtiene transaccions por un usuario."""
        return (
            db.query(Transaccion)
            .filter(Transaccion.id_usuario == id_usuario)
            .offset(skip)
            .limit(limit)
            .all()
        )
    
    @staticmethod
    def get_by_recurso(
        db: Session, id_recurso: int, skip: int = 0, limit: int = 100
    ) -> List[Transaccion]:
        """Obtiene transaccions por un recurso."""
        return (
            db.query(Transaccion)
            .filter(Transaccion.id_recurso == id_recurso)
            .offset(skip)
            .limit(limit)
            .all()
        )
