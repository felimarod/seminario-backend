CONNECT seminario/seminario;
CREATE TABLE Horario(
	id_horario VARCHAR(100)
	CONSTRAINT horario_pk PRIMARY KEY
);

CREATE TABLE HorarioDetalle(
	id_horario VARCHAR(100) 
	CONSTRAINT horario_detalle_fk REFERENCES Horario(id_horario),
	dia_semana VARCHAR(20) 
	CONSTRAINT dia_semana_nn NOT NULL,
	CONSTRAINT horario_detalle_pk PRIMARY KEY (id_horario, dia_semana),
	hora_apertura TIMESTAMP 
	CONSTRAINT hora_apertura_nn NOT NULL,
	hora_cierre TIMESTAMP 
	CONSTRAINT hora_cierre_nn NOT NULL
);

CREATE TABLE Permiso(
    id_permiso NUMBER(5) 
	CONSTRAINT permiso_pk PRIMARY KEY,
    nombre_permiso VARCHAR(100) 
	CONSTRAINT nombre_permiso_nn NOT NULL,
    descripcion_permiso VARCHAR2(500)
);

CREATE TABLE TipoUsuario(
	id_tipo_usuario NUMBER(5) 
	CONSTRAINT tipo_usuario_pk PRIMARY KEY,
	nombre_tipo_usuario VARCHAR(100) 
	CONSTRAINT nombre_tipo_usuario_nn NOT NULL,
	descripcion_tipo_usuario VARCHAR2(500)
);


CREATE TABLE Unidad(
	id_unidad NUMBER(5) 
	CONSTRAINT unidad_pk PRIMARY KEY,
	nombre_unidad VARCHAR(100) 
	CONSTRAINT nombre_unidad_nn NOT NULL,
	horario_unidad VARCHAR(100)
	CONSTRAINT horario_unidad NOT NULL
	CONSTRAINT horario_unidad_fk REFERENCES Horario(id_horario)
);

CREATE SEQUENCE unidad_seq START WITH 1 INCREMENT BY 1;

CREATE TRIGGER unidad_bir BEFORE INSERT ON Unidad
FOR EACH ROW
BEGIN
  SELECT unidad_seq.NEXTVAL INTO :NEW.id_unidad FROM dual;
END;
/

CREATE TABLE Usuario(
	id_usuario NUMBER(5) 
	CONSTRAINT usuario_pk PRIMARY KEY,
	nombre VARCHAR(100) 
	CONSTRAINT nombre_nn NOT NULL,
	apellido VARCHAR(100) 
	CONSTRAINT apellido_nn NOT NULL,
	contrasena VARCHAR(100) 
	CONSTRAINT contrasena_nn NOT NULL,
	correo VARCHAR(100) 
	CONSTRAINT correo_nn NOT NULL,
	activo NUMBER(1) DEFAULT 1
	CONSTRAINT activo_nn NOT NULL,
	id_tipo_usuario NUMBER(5) 
	CONSTRAINT usuario_tipo_usuario_fk REFERENCES TipoUsuario(id_tipo_usuario),
	id_unidad NUMBER(5) 
	CONSTRAINT usuario_unidad_fk REFERENCES Unidad(id_unidad)
);

CREATE SEQUENCE usuario_seq START WITH 1 INCREMENT BY 1;

CREATE TRIGGER usuario_bir BEFORE INSERT ON Usuario
FOR EACH ROW
BEGIN
  SELECT usuario_seq.NEXTVAL INTO :NEW.id_usuario FROM dual;
END;
/

CREATE TABLE Usuario_Permiso(
	id_usuario NUMBER(5) 
	CONSTRAINT usuario_permiso_usuario_fk REFERENCES Usuario(id_usuario),
	id_permiso NUMBER(5) 
	CONSTRAINT usuario_permiso_permiso_fk REFERENCES Permiso(id_permiso),
	CONSTRAINT usuario_permiso_pk PRIMARY KEY (id_usuario, id_permiso)
);

CREATE TABLE TipoRecurso(
	id_tipo_recurso NUMBER(5) 
	CONSTRAINT tipo_recurso_pk PRIMARY KEY,
	nombre_tipo_recurso VARCHAR(100) 
	CONSTRAINT nombre_tipo_recurso NOT NULL,
	codigo_tipo_recurso VARCHAR(100) 
	CONSTRAINT codigo_tipo_recurso NOT NULL,
	descripcion_tipo_recurso VARCHAR2(500),
	granuralidad_disponibilidad NUMBER(5)
	constraint CK_libros_precio_positivo check (granuralidad_disponibilidad>=0),
	horario_disponibilidad VARCHAR(100)
	CONSTRAINT horario_disponibilidad_fk REFERENCES Horario(id_horario)
	CONSTRAINT horario_disponibilidad_nn NOT NULL,
	id_unidad NUMBER(5) 
	CONSTRAINT tipo_recurso_unidad_fk REFERENCES Unidad(id_unidad)
	CONSTRAINT tipo_recurso_unidad_nn NOT NULL,
	CONSTRAINT codigo_undidad_unicidad UNIQUE (codigo_tipo_recurso, id_unidad)
);

CREATE TABLE IDsRecurso(
	codigo_tipo VARCHAR(100),
	id_tipo_recurso NUMBER(5)
	CONSTRAINT id_tipo_recurso_fk REFERENCES TipoRecurso(id_tipo_recurso),
	CONSTRAINT codigo_recurso_pk PRIMARY KEY (codigo_tipo,id_tipo_recurso),
	consecutivo NUMBER(5) DEFAULT 1 NOT NULL
);

CREATE SEQUENCE tipo_recurso_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER tipo_recurso_bir BEFORE INSERT ON TipoRecurso
FOR EACH ROW
BEGIN
  	SELECT tipo_recurso_seq.NEXTVAL INTO :NEW.id_tipo_recurso FROM dual;
END;
/

CREATE OR REPLACE TRIGGER tipo_recurso_air AFTER INSERT ON TipoRecurso
FOR EACH ROW
BEGIN
	INSERT INTO IDsRecurso (codigo_tipo,id_tipo_recurso)
 	 	VALUES (:NEW.codigo_tipo_recurso,:NEW.id_tipo_recurso);
END;
/

CREATE TABLE Recurso(
	id_recurso VARCHAR(20) 
	CONSTRAINT recurso_pk PRIMARY KEY,
	nombre_recurso VARCHAR(100) 
	CONSTRAINT nombre_recurso_nn NOT NULL,
	descripcion_recurso VARCHAR2(500),
	foto_recurso BLOB,
	estado_recurso VARCHAR(50) DEFAULT 'Disponible' NOT NULL,
	id_tipo_recurso NUMBER(5) 
	CONSTRAINT recurso_tipo_recurso_fk REFERENCES TipoRecurso(id_tipo_recurso)
);

CREATE OR REPLACE TRIGGER recurso_bir BEFORE INSERT ON Recurso
FOR EACH ROW
DECLARE
	v_codigo_tipo TipoRecurso.codigo_tipo_recurso%TYPE;
	v_consecutivo NUMBER(5);
BEGIN
	SELECT codigo_tipo,consecutivo INTO v_codigo_tipo, v_consecutivo
		FROM IDsRecurso where id_tipo_recurso = :NEW.id_tipo_recurso;
	:NEW.id_recurso := v_codigo_tipo||'-'||TO_CHAR(v_consecutivo);
	UPDATE IDsRecurso
  	SET consecutivo = v_consecutivo + 1
  	WHERE id_tipo_recurso = :NEW.id_tipo_recurso;
END;
/

CREATE TABLE TipoTransaccion(
	id_tipo_transaccion NUMBER(5) 
	CONSTRAINT tipo_transaccion_pk PRIMARY KEY,
	nombre_tipo_transaccion VARCHAR(100)
	CONSTRAINT nombre_tipo_transaccion_nn NOT NULL,
	descripcion_tipo_transaccion VARCHAR2(500)
);

CREATE TABLE Transaccion(
	id_transaccion NUMBER(5) 
	CONSTRAINT transaccion_pk PRIMARY KEY,
	fecha_inicio_transaccion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	fecha_fin_transaccion TIMESTAMP,
	estado_transaccion VARCHAR(50)
	CONSTRAINT estado_transaccion_nn NOT NULL,
	falla_servicio VARCHAR2(500),
	id_tipo_transaccion NUMBER(5) 
	CONSTRAINT trans_tipo_transaccion_fk REFERENCES TipoTransaccion(id_tipo_transaccion),
	id_usuario NUMBER(5) 
	CONSTRAINT trans_usuario_fk REFERENCES Usuario(id_usuario),
	id_recurso VARCHAR(20) 
	CONSTRAINT trans_recurso_fk REFERENCES Recurso(id_recurso),
	id_empleado_responsable NUMBER(5) 
	CONSTRAINT trans_responsable_fk REFERENCES Usuario(id_usuario)
);

CREATE SEQUENCE trans_seq START WITH 1 INCREMENT BY 1;

CREATE TRIGGER trans_bir BEFORE INSERT ON Transaccion
FOR EACH ROW
BEGIN
  SELECT trans_seq.NEXTVAL INTO :NEW.id_transaccion FROM dual;
END;
/

CREATE TABLE Calificacion(
	id_calificacion NUMBER(5) 
	CONSTRAINT calificacion_pk PRIMARY KEY,
	cumplimiento_horarios NUMBER(1) 
	CONSTRAINT cumplimiento_horarios_nn NOT NULL,
	calidad_servicio NUMBER(1) 
	CONSTRAINT calidad_servicio_nn NOT NULL,
	atencion_personal NUMBER(1) 
	CONSTRAINT atencion_personal_nn NOT NULL,
	id_transaccion NUMBER(5) 
	CONSTRAINT calificacion_transaccion_fk REFERENCES Transaccion(id_transaccion)
);

CREATE SEQUENCE calificacion_seq START WITH 1 INCREMENT BY 1;

CREATE TRIGGER calificacion_bir BEFORE INSERT ON Calificacion
FOR EACH ROW
BEGIN
  SELECT calificacion_seq.NEXTVAL INTO :NEW.id_calificacion FROM dual;
END;
/