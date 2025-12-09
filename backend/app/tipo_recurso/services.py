"""Service para operaciones con TipoRecurso."""

from fastapi import HTTPException, status
from sqlalchemy.orm import Session
from sqlalchemy.exc import IntegrityError

from app.tipo_recurso.models import TipoRecurso
from app.tipo_recurso.schemas import TipoRecursoCreate, TipoRecursoUpdate
from app.tipo_recurso.selectors import TipoRecursoSelectors

from app.horario.models import HorarioDetalle
from app.horario.selectors import HorarioSelectors

from app.unidad.models import Unidad
from app.unidad.selectors import UnidadSelectors


class TipoRecursoService:
    """Service para operaciones con TipoRecurso."""

    @staticmethod
    def create(db: Session, tipo_recurso_data: TipoRecursoCreate) -> TipoRecurso:
        try:
            """Crea un nuevo tipo_recurso."""
            tipos_recursos_unidad = TipoRecursoSelectors.get_by_unidad_tipo_recurso(
                db, tipo_recurso_data.id_unidad
            )
            existing_tipo_recurso = TipoRecursoSelectors.get_by_nombre(db, tipo_recurso_data.nombre_tipo_recurso)
            if existing_tipo_recurso in tipos_recursos_unidad:
                raise HTTPException(
                    status_code=status.HTTP_400_BAD_REQUEST,
                    detail="Ya existe un tipo_recurso con este nombre en la unidad",
                )
            TipoRecursoService.updateSchedule(db, UnidadSelectors.get_by_id(db,tipo_recurso_data.id_unidad).horario_unidad, tipo_recurso_data.horario_disponibilidad)
            db_tipo_recurso = TipoRecurso(**tipo_recurso_data.model_dump())
            db.add(db_tipo_recurso)
            db.commit()
            db.refresh(db_tipo_recurso)
            return db_tipo_recurso
        except IntegrityError as e:
            errorStr = str(e.orig)
            if "ORA-00001" in errorStr:
                # Violación UNIQUE
                raise HTTPException(
                    status_code=status.HTTP_400_BAD_REQUEST,
                    detail="Ya existe un tipo de recurso con ese codigo"
                )
            elif "ORA-02291" in errorStr:
                # Violación de FOREIGN KEY
                errorDet = "No se encontró "
                if "HORARIO_DISPONIBILIDAD_FK" in errorStr: errorDet += "el horario indicado"
                if "TIPO_RECURSO_UNIDAD_FK" in errorStr: errorDet += "la unidad indicada"
                
                raise HTTPException(
                    status_code=status.HTTP_400_BAD_REQUEST,
                    detail=errorDet
                )
            else:
                raise HTTPException(
                    status_code=status.HTTP_400_BAD_REQUEST,
                    detail=f"Error de integridad en BD: {str(e.orig)}"
                )
        except ValueError as ve:
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST,
                detail=str(ve)
            )

    @staticmethod
    def update(db: Session, id_tipo_recurso: int, tipo_recurso_data: TipoRecursoUpdate) -> TipoRecurso:
        """Actualiza un tipo_recurso existente."""
        try:
            db_tipo_recurso = TipoRecursoSelectors.get_by_id(db, id_tipo_recurso)
            db_unidad = UnidadSelectors.get_by_id(db,tipo_recurso_data.id_unidad)
            if not db_unidad:
                raise HTTPException(
                    status_code=status.HTTP_400_BAD_REQUEST,
                    detail="unidad no encontrada"
                )
            
            if tipo_recurso_data.horario_disponibilidad:
                if tipo_recurso_data.horario_disponibilidad != db_tipo_recurso.horario_disponibilidad:
                    horario = TipoRecursoService.updateSchedule(db, db_unidad.horario_unidad, tipo_recurso_data.horario_disponibilidad)
                    if horario:
                        db_tipo_recurso.horario_disponibilidad = tipo_recurso_data.horario_disponibilidad
            
            data = tipo_recurso_data.model_dump(
                exclude_unset=True,
                exclude={"horario_disponibilidad"}   # the field you want to omit
            )
            for key, value in data.items():
                setattr(db_tipo_recurso, key, value)
            db.commit()
            db.refresh(db_tipo_recurso)
            return db_tipo_recurso

        except IntegrityError as e:
            errorStr = str(e.orig)
            if "ORA-00001" in errorStr:
                # Violación UNIQUE
                raise HTTPException(
                    status_code=status.HTTP_400_BAD_REQUEST,
                    detail="Ya existe un tipo de recurso con ese codigo en esta unidad"
                )
            if "ORA-02291" in errorStr:
                # Violación de FOREIGN KEY
                errorDet = "No se encontró "
                if "HORARIO_DISPONIBILIDAD_FK" in errorStr: errorDet += "el horario indicado"
                if "TIPO_RECURSO_UNIDAD_FK" in errorStr: errorDet += "la unidad indicada"
                
                raise HTTPException(
                    status_code=status.HTTP_400_BAD_REQUEST,
                    detail=errorDet
                )
            else:
                raise HTTPException(
                    status_code=status.HTTP_400_BAD_REQUEST,
                    detail=f"Error de integridad en BD: {str(e.orig)}"
                )
    
    @staticmethod
    def updateSchedule(db: Session, unitHorario: str, newHorario: str) -> list[HorarioDetalle]:
        """Actualiza un tipo_recurso existente."""
        newHorarioDetails = HorarioSelectors.get_detaills_by_id(db,newHorario)
        unitHorarioDetails = HorarioSelectors.get_detaills_by_id(db,unitHorario)
        if not newHorarioDetails:
            raise ValueError(f"No se encontró el horario indicado")
        for detail in newHorarioDetails:
            detail : HorarioDetalle
            aceptance = False
            for detail_unit in [x for x in unitHorarioDetails if x.dia_semana == detail.dia_semana]:
                if detail.hora_apertura >= detail_unit.hora_apertura and detail.hora_cierre <= detail_unit.hora_cierre:
                    aceptance = True
                    break
            if not aceptance:
                detailEr = f"El horario {detail.id_horario} no encaja dentro del horario de atencion de la unidad"
                detailEr += f" ({detail_unit.id_horario}), particularmente el dia {detail.dia_semana}"
                raise ValueError(detailEr)
        
        return newHorarioDetails

