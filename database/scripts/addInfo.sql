INSERT INTO TipoUsuario (id_tipo_usuario, nombre_tipo_usuario)
 VALUES (1,'superadmin');
INSERT INTO TipoUsuario (id_tipo_usuario, nombre_tipo_usuario)
 VALUES (2,'admin unidad');
INSERT INTO TipoUsuario (id_tipo_usuario, nombre_tipo_usuario)
 VALUES (3,'usuario');

INSERT INTO Usuario (nombre,apellido,contrasena, correo, activo, id_tipo_usuario)
 VALUES ('admin_labs', 'admin_labs', 'admin123', 'admin@ejemplo.com', 1, 2);

delete from USUARIO where id_usuario = 3;

INSERT INTO Horario (id_horario)
 VALUES ('horario_default');

INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Lunes', TO_TIMESTAMP('08:00', 'HH24:MI'), TO_TIMESTAMP('18:00', 'HH24:MI'));
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Martes', TO_TIMESTAMP('08:00', 'HH24:MI'), TO_TIMESTAMP('18:00', 'HH24:MI'));
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Miércoles', TO_TIMESTAMP('08:00', 'HH24:MI'), TO_TIMESTAMP('18:00', 'HH24:MI'));
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Jueves', TO_TIMESTAMP('08:00', 'HH24:MI'), TO_TIMESTAMP('18:00', 'HH24:MI'));
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Viernes', TO_TIMESTAMP('08:00', 'HH24:MI'), TO_TIMESTAMP('18:00', 'HH24:MI'));
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Sabado', TO_TIMESTAMP('10:00', 'HH24:MI'), TO_TIMESTAMP('14:00', 'HH24:MI'));
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Domingo', TO_TIMESTAMP('00:00', 'HH24:MI'), TO_TIMESTAMP('00:00', 'HH24:MI'));
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Festivos', TO_TIMESTAMP('00:00', 'HH24:MI'), TO_TIMESTAMP('00:00', 'HH24:MI'));

INSERT INTO Unidad (id_unidad, nombre_unidad, horario_unidad, admin_unidad)
 VALUES (1, 'Laboratorios de Computo', 'horario_default', 1);
COMMIT;

SELECT 'Script addInfo.sql executed successfully.' AS message FROM dual;