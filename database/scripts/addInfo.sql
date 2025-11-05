INSERT INTO TipoUsuario (id_tipo_usuario, nombre_tipo_usuario)
 VALUES (1,'superadmin');
INSERT INTO TipoUsuario (id_tipo_usuario, nombre_tipo_usuario)
 VALUES (2,'admin unidad');
INSERT INTO TipoUsuario (id_tipo_usuario, nombre_tipo_usuario)
 VALUES (3,'usuario');


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

INSERT INTO Unidad (id_unidad, nombre_unidad, horario_unidad)
 VALUES (1, 'Laboratorios de Computo', 'horario_default');

INSERT INTO Usuario (nombre,apellido,contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('super', 'admin', '1234', 'super@macista.com', 1, 1, 1);
INSERT INTO Usuario (nombre,apellido,contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('admin_labs', 'admin_labs', 'admin123', 'admin@ejemplo.com', 1, 2, 1);

INSERT INTO TipoTransaccion (id_tipo_transaccion, nombre_tipo_transaccion, descripcion_tipo_transaccion)
 VALUES (1, 'Reserva', 'Reserva de un recurso o espacio'); 
INSERT INTO TipoTransaccion (id_tipo_transaccion, nombre_tipo_transaccion, descripcion_tipo_transaccion)
 VALUES (2, 'Prestamo', 'Prestamo de un recurso o espacio');

INSERT INTO TipoRecurso (id_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso)
 VALUES (1, 'Computadora', 'Equipo de computo de escritorio o portatil');
INSERT INTO TipoRecurso (id_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso)
 VALUES (2, 'Proyector', 'Dispositivo para proyectar imagenes o videos');
INSERT INTO TipoRecurso (id_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso)
 VALUES (3, 'Sala de Reuniones', 'Espacio destinado para reuniones o conferencias');
INSERT INTO TipoRecurso (id_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso)
 VALUES (4, 'Laboratorio', 'Espacio equipado para realizar practicas o experimentos');

INSERT INTO Recurso (id_recurso, nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso)
 VALUES (1, 'PC-101', 'Computadora de escritorio en laboratorio 1', 'Disponible', 1);
INSERT INTO Recurso (id_recurso, nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso)
 VALUES (2, 'Proyector-A1', 'Proyector HD para presentaciones', 'Disponible', 2);
INSERT INTO Recurso (id_recurso, nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso)
 VALUES (3, 'Sala-Conf1', 'Sala de conferencias equipada con proyector', 'Disponible', 3);
INSERT INTO Recurso (id_recurso, nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso)
 VALUES (4, 'Lab-Quimica', 'Laboratorio de quimica con equipos de seguridad', 'Disponible', 4);

INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, estado_transaccion, falla_servicio, id_tipo_transaccion, id_recurso, id_usuario)
 VALUES (1, SYSDATE, SYSDATE + 1, 'Completada', NULL, 1, 1, 1); -- Reserva de PC-101 por usuario
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, estado_transaccion, falla_servicio, id_tipo_transaccion, id_recurso, id_usuario)
 VALUES (2, SYSDATE, SYSDATE + 2, 'Pendiente', 'Falla en la red', 2, 2, 1); -- Prestamo de Proyector-A1 por usuario

INSERT INTO Calificacion (id_calificacion, cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
 VALUES (1, 5, 5, 5, 1);
INSERT INTO Calificacion (id_calificacion, cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
 VALUES (2, 4, 4, 4, 2);

COMMIT;


-- 



SELECT 'Script addInfo.sql executed successfully.' AS message FROM dual;