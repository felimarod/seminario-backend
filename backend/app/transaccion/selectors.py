"""Selectors para el modelo Transaccion."""

from typing import List, Optional

from sqlalchemy.orm import Session
from sqlalchemy import select

from app.historial_transaccion.models import HistorialTransaccion
from app.estado_transaccion.models import EstadoTransaccion
from app.transaccion.models import Transaccion
from app.recurso.models import Recurso
from app.tipo_recurso.models import TipoRecurso
from app.estado_transaccion.selectors import EstadoTransaccionSelectors
from app.transaccion.schemas import Filtros


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
    
    @staticmethod
    def get_by_empleado(
        db: Session, id_empleado: int, skip: int = 0, limit: int = 100
    ) -> List[Transaccion]:
        """Obtiene transaccions por un recurso."""
        return (
            db.query(Transaccion)
            .filter(Transaccion.id_empleado_responsable == id_empleado)
            .offset(skip)
            .limit(limit)
            .all()
        )
    
    @staticmethod
    def get_filter(
        db: Session, filtros: Filtros, skip: int = 0, limit: int = 100
    ) -> List[Transaccion]:
        """Obtiene transaccions por un recurso."""
        query = db.query(Transaccion)
        if filtros.id_tipo_recurso:
            query = query.join(Recurso, Recurso.id_recurso == Transaccion.id_recurso)
            query = query.filter(Recurso.id_tipo_recurso == filtros.id_tipo_recurso)
        
        if filtros.id_unidad:
            query = query.join(Recurso, Recurso.id_recurso == Transaccion.id_recurso)
            query = query.join(TipoRecurso, TipoRecurso.id_tipo_recurso == Recurso.id_tipo_recurso)
            query = query.filter(TipoRecurso.id_unidad == filtros.id_unidad)
    
        if filtros.id_usuario:
            query = query.filter(Transaccion.id_usuario == filtros.id_usuario)
        if filtros.id_empleado_responsable:
            query = query.filter(Transaccion.id_empleado_responsable  == filtros.id_empleado_responsable)
        if filtros.id_recurso:
            query = query.filter(Transaccion.id_recurso  == filtros.id_recurso)
        
        if filtros.ventana_atributo == "creacion":
            if filtros.ventana_tiempo_inicio:
                query = query.filter(Transaccion.fecha_creacion >= filtros.ventana_tiempo_inicio)
            if filtros.ventana_tiempo_fin:
                query = query.filter(Transaccion.fecha_creacion >= filtros.ventana_tiempo_fin)
        if filtros.ventana_atributo == "inicio":
            if filtros.ventana_tiempo_inicio:
                query = query.filter(Transaccion.fecha_inicio_transaccion >= filtros.ventana_tiempo_inicio)
            if filtros.ventana_tiempo_fin:
                query = query.filter(Transaccion.fecha_inicio_transaccion >= filtros.ventana_tiempo_fin)
        if filtros.ventana_atributo == "fin":
            if filtros.ventana_tiempo_inicio:
                query = query.filter(Transaccion.fecha_fin_transaccion >= filtros.ventana_tiempo_inicio)
            if filtros.ventana_tiempo_fin:
                query = query.filter(Transaccion.fecha_fin_transaccion >= filtros.ventana_tiempo_fin)
        
        return query.offset(skip).limit(limit).all()
