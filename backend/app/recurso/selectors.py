"""Selectors para el modelo Recurso."""

from typing import List, Optional

from sqlalchemy import and_, not_, exists, or_
from sqlalchemy.orm import Session, joinedload

from app.recurso.models import Recurso
from app.tipo_recurso.models import TipoRecurso
from app.transaccion.models import Transaccion
from app.horario.models import Horario, HorarioDetalle

from app.recurso.schemas import Filtros


class RecursoSelectors:
    """Selectors para el modelo Recurso."""

    @staticmethod
    def get_by_id(db: Session, id_recurso: str) -> Optional[Recurso]:
        """Obtiene un recurso por su ID."""
        return db.query(Recurso).filter(Recurso.id_recurso == id_recurso).first()

    @staticmethod
    def get_by_nombre(db: Session, nombre: str) -> Optional[Recurso]:
        """Obtiene un recurso por su nombre."""
        return db.query(Recurso).filter(Recurso.nombre_recurso == nombre).first()

    @staticmethod
    def get_all(db: Session, skip: int = 0, limit: int = 100) -> List[Recurso]:
        """Obtiene todos los recursos con paginación."""
        return db.query(Recurso).offset(skip).limit(limit).all()

    @staticmethod
    def get_by_tipo_recurso(
        db: Session, id_tipo_recurso: int, skip: int = 0, limit: int = 100
    ) -> List[Recurso]:
        """Obtiene recursos por tipo de recurso."""
        return (
            db.query(Recurso)
            .filter(Recurso.id_tipo_recurso == id_tipo_recurso)
            .offset(skip)
            .limit(limit)
            .all()
        )
    
    @staticmethod
    def get_by_unidad(
        db: Session, id_unidad: int, skip: int = 0, limit: int = 100
    ) -> List[Recurso]:
        """Obtiene recursos por tipo de recurso."""
        
        return (
            db.query(Recurso)
            .join(TipoRecurso, TipoRecurso.id_tipo_recurso == Recurso.id_tipo_recurso)
            .filter(TipoRecurso.id_unidad == id_unidad)
            .offset(skip)
            .limit(limit)
            .all()
        )
    
    @staticmethod
    def get_filter(
        db: Session, filtros: Filtros, skip: int = 0, limit: int = 100
    ) -> List[Recurso]:
        """Obtiene recursos filtrados con paginacion"""
        query = db.query(Recurso)
        if filtros.ventana_tiempo_fin or filtros.ventana_tiempo_inicio:
            condicion_excl_trans = True
            if filtros.disponibilidad_completa:
                if filtros.ventana_tiempo_inicio and filtros.ventana_tiempo_fin:
                    condicion_excl_trans = or_(
                        and_(
                            Transaccion.fecha_inicio_transaccion < filtros.ventana_tiempo_inicio,
                            Transaccion.fecha_fin_transaccion > filtros.ventana_tiempo_inicio
                        ),
                        and_(
                            Transaccion.fecha_inicio_transaccion < filtros.ventana_tiempo_fin,
                            Transaccion.fecha_fin_transaccion > filtros.ventana_tiempo_fin
                        ),
                        and_(
                            Transaccion.fecha_inicio_transaccion >= filtros.ventana_tiempo_inicio,
                            Transaccion.fecha_fin_transaccion <= filtros.ventana_tiempo_fin
                        )
                    )
                elif filtros.ventana_tiempo_inicio:
                    condicion_excl_trans = Transaccion.fecha_fin_transaccion > filtros.ventana_tiempo_inicio
                elif filtros.ventana_tiempo_fin:
                    condicion_excl_trans = Transaccion.fecha_inicio_transaccion < filtros.ventana_tiempo_fin
            
                
            else:
                inicio = Transaccion.fecha_inicio_transaccion <= filtros.ventana_tiempo_inicio
                fin = Transaccion.fecha_fin_transaccion >= filtros.ventana_tiempo_fin
                condicion_excl_trans = and_(condicion_excl_trans,inicio, fin)
            
            transaccion_solapada = exists().where(
                and_(
                    Transaccion.id_recurso == Recurso.id_recurso,
                    condicion_excl_trans
                )
            )
            print(f"Transaccion solapada: {transaccion_solapada}")
            query = query.filter(not_(transaccion_solapada))
            
        if filtros.ventana_tiempo_inicio and filtros.ventana_tiempo_fin:
            dias = ['Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado', 'Domingo']
            dia_semana = dias[filtros.ventana_tiempo_inicio.weekday()]
            tiempo_inicio_str = filtros.ventana_tiempo_inicio.strftime('%H:%M:%S')
            tiempo_fin_str = filtros.ventana_tiempo_fin.strftime('%H:%M:%S')
            print(f"Tiempo inicio: {tiempo_inicio_str}, Tiempo fin: {tiempo_fin_str}")
            condicion_excl_tipo = False
            
            if filtros.disponibilidad_completa:
                condicion_excl_tipo = or_(
                    HorarioDetalle.hora_apertura > tiempo_inicio_str,
                    HorarioDetalle.hora_cierre < tiempo_fin_str
                )
            
            inicio = HorarioDetalle.hora_apertura >= tiempo_fin_str
            fin = HorarioDetalle.hora_cierre <= tiempo_inicio_str
            condicion_excl_tipo = or_(condicion_excl_tipo,inicio, fin)
            
            transaccion_solapada = exists().where(
                and_(
                    TipoRecurso.id_tipo_recurso == Recurso.id_tipo_recurso,
                    HorarioDetalle.id_horario == TipoRecurso.horario_disponibilidad,
                    HorarioDetalle.dia_semana == dia_semana,
                    condicion_excl_tipo
                )
            )
            print(f"Transaccion solapada: {transaccion_solapada}")
            query = query.filter(not_(transaccion_solapada))



        if filtros.id_unidad:
            query = query.join(TipoRecurso, TipoRecurso.id_tipo_recurso == Recurso.id_tipo_recurso)
            query = query.filter(TipoRecurso.id_unidad == filtros.id_unidad)
        if filtros.id_tipo_recurso:
            query = query.filter(Recurso.id_tipo_recurso  == filtros.id_tipo_recurso)
        
        
        return query.offset(skip).limit(limit).all()
