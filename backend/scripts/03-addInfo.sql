CONNECT seminario/seminario;
INSERT INTO TipoUsuario (id_tipo_usuario, nombre_tipo_usuario)
 VALUES (1,'superadmin');
INSERT INTO TipoUsuario (id_tipo_usuario, nombre_tipo_usuario)
 VALUES (2,'admin unidad');
INSERT INTO TipoUsuario (id_tipo_usuario, nombre_tipo_usuario)
 VALUES (3,'empleado');
INSERT INTO TipoUsuario (id_tipo_usuario, nombre_tipo_usuario)
 VALUES (4,'usuario');


--INSERCCION DE TIPOS DE TRANSACCION-------------------------------------------------------------------
INSERT INTO TipoTransaccion (id_tipo_transaccion, nombre_tipo_transaccion, descripcion_tipo_transaccion)
 VALUES (1, 'Reserva', 'Reserva de un recurso o espacio'); 
INSERT INTO TipoTransaccion (id_tipo_transaccion, nombre_tipo_transaccion, descripcion_tipo_transaccion)
 VALUES (2, 'Prestamo', 'Prestamo de un recurso o espacio');


--INSERCCION DE HORARIOS-------------------------------------------------------------------
INSERT INTO Horario (id_horario)
 VALUES ('horario_default');

INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Lunes', INTERVAL '08:00' HOUR TO MINUTE, INTERVAL '18:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Martes', INTERVAL '08:00' HOUR TO MINUTE, INTERVAL '18:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Miércoles', INTERVAL '08:00' HOUR TO MINUTE, INTERVAL '18:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Jueves', INTERVAL '08:00' HOUR TO MINUTE, INTERVAL '18:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Viernes', INTERVAL '08:00' HOUR TO MINUTE, INTERVAL '18:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Sabado', INTERVAL '8:00' HOUR TO MINUTE, INTERVAL '14:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Domingo', INTERVAL '00:00' HOUR TO MINUTE, INTERVAL '00:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Festivos', INTERVAL '00:00' HOUR TO MINUTE, INTERVAL '00:00' HOUR TO MINUTE);

INSERT INTO Horario (id_horario)
 VALUES ('horario_extendido');

INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_extendido', 'Lunes', INTERVAL '06:00' HOUR TO MINUTE, INTERVAL '22:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_extendido', 'Martes', INTERVAL '06:00' HOUR TO MINUTE, INTERVAL '22:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_extendido', 'Miércoles', INTERVAL '06:00' HOUR TO MINUTE, INTERVAL '22:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_extendido', 'Jueves', INTERVAL '06:00' HOUR TO MINUTE, INTERVAL '22:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_extendido', 'Viernes', INTERVAL '06:00' HOUR TO MINUTE, INTERVAL '22:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_extendido', 'Sabado', INTERVAL '08:00' HOUR TO MINUTE, INTERVAL '20:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_extendido', 'Domingo', INTERVAL '08:00' HOUR TO MINUTE, INTERVAL '18:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_extendido', 'Festivos', INTERVAL '08:00' HOUR TO MINUTE, INTERVAL '18:00' HOUR TO MINUTE);

INSERT INTO Horario (id_horario)
 VALUES ('horario_nocturno');

INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_nocturno', 'Lunes', INTERVAL '18:00' HOUR TO MINUTE, INTERVAL '06:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_nocturno', 'Martes', INTERVAL '18:00' HOUR TO MINUTE, INTERVAL '06:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_nocturno', 'Miércoles', INTERVAL '18:00' HOUR TO MINUTE, INTERVAL '06:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_nocturno', 'Jueves', INTERVAL '18:00' HOUR TO MINUTE, INTERVAL '06:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_nocturno', 'Viernes', INTERVAL '18:00' HOUR TO MINUTE, INTERVAL '06:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_nocturno', 'Sabado', INTERVAL '18:00' HOUR TO MINUTE, INTERVAL '06:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_nocturno', 'Domingo', INTERVAL '18:00' HOUR TO MINUTE, INTERVAL '06:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_nocturno', 'Festivos', INTERVAL '18:00' HOUR TO MINUTE, INTERVAL '06:00' HOUR TO MINUTE);

INSERT INTO Horario (id_horario)
 VALUES ('horario_fin_semana');

INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_fin_semana', 'Lunes', INTERVAL '00:00' HOUR TO MINUTE, INTERVAL '00:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_fin_semana', 'Martes', INTERVAL '00:00' HOUR TO MINUTE, INTERVAL '00:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_fin_semana', 'Miércoles', INTERVAL '00:00' HOUR TO MINUTE, INTERVAL '00:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_fin_semana', 'Jueves', INTERVAL '00:00' HOUR TO MINUTE, INTERVAL '00:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_fin_semana', 'Viernes', INTERVAL '00:00' HOUR TO MINUTE, INTERVAL '00:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_fin_semana', 'Sabado', INTERVAL '08:00' HOUR TO MINUTE, INTERVAL '22:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_fin_semana', 'Domingo', INTERVAL '08:00' HOUR TO MINUTE, INTERVAL '20:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_fin_semana', 'Festivos', INTERVAL '08:00' HOUR TO MINUTE, INTERVAL '20:00' HOUR TO MINUTE);

INSERT INTO Horario (id_horario)
 VALUES ('horario_medio_tiempo');

INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_medio_tiempo', 'Lunes', INTERVAL '08:00' HOUR TO MINUTE, INTERVAL '12:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_medio_tiempo', 'Martes', INTERVAL '08:00' HOUR TO MINUTE, INTERVAL '12:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_medio_tiempo', 'Miércoles', INTERVAL '08:00' HOUR TO MINUTE, INTERVAL '12:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_medio_tiempo', 'Jueves', INTERVAL '08:00' HOUR TO MINUTE, INTERVAL '12:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_medio_tiempo', 'Viernes', INTERVAL '08:00' HOUR TO MINUTE, INTERVAL '12:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_medio_tiempo', 'Sabado', INTERVAL '08:00' HOUR TO MINUTE, INTERVAL '12:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_medio_tiempo', 'Domingo', INTERVAL '00:00' HOUR TO MINUTE, INTERVAL '00:00' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_medio_tiempo', 'Festivos', INTERVAL '00:00' HOUR TO MINUTE, INTERVAL '00:00' HOUR TO MINUTE);

INSERT INTO Horario (id_horario)
 VALUES ('horario_24_7');

INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_24_7', 'Lunes', INTERVAL '00:00' HOUR TO MINUTE, INTERVAL '23:59' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_24_7', 'Martes', INTERVAL '00:00' HOUR TO MINUTE, INTERVAL '23:59' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_24_7', 'Miércoles', INTERVAL '00:00' HOUR TO MINUTE, INTERVAL '23:59' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_24_7', 'Jueves', INTERVAL '00:00' HOUR TO MINUTE, INTERVAL '23:59' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_24_7', 'Viernes', INTERVAL '00:00' HOUR TO MINUTE, INTERVAL '23:59' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_24_7', 'Sabado', INTERVAL '00:00' HOUR TO MINUTE, INTERVAL '23:59' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_24_7', 'Domingo', INTERVAL '00:00' HOUR TO MINUTE, INTERVAL '23:59' HOUR TO MINUTE);
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_24_7', 'Festivos', INTERVAL '00:00' HOUR TO MINUTE, INTERVAL '23:59' HOUR TO MINUTE);


--INSERCCION DE UNIDADES DEL SISTEMA-------------------------------------------------------------------
INSERT INTO Unidad (nombre_unidad, horario_unidad)
 VALUES ('Laboratorios de Computo', 'horario_default');

INSERT INTO Unidad (nombre_unidad, horario_unidad)
 VALUES ('Sala de Multimedia', 'horario_extendido');

INSERT INTO Unidad (nombre_unidad, horario_unidad)
 VALUES ('Biblioteca Central', 'horario_24_7');

INSERT INTO Unidad (nombre_unidad, horario_unidad)
 VALUES ('Centro de Emprendimiento', 'horario_medio_tiempo');

INSERT INTO Unidad (nombre_unidad, horario_unidad)
 VALUES ('Laboratorio de Electrónica', 'horario_nocturno');

INSERT INTO Unidad (nombre_unidad, horario_unidad)
 VALUES ('Auditorio Principal', 'horario_fin_semana');


-- Super Admin general
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario)
 VALUES ('Carlos', 'Vergara', 'Super2025*', 'carlos.vergara@admin.com', 1, 1);

-- Usuarios normales
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario)
 VALUES ('Laura', 'Ramírez', 'Laura123', 'laura.ramirez@gmail.com', 1, 4);
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario)
 VALUES ('Mateo', 'Hernández', 'Mateo123', 'mateo.hdz@hotmail.com', 1, 4);
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario)
 VALUES ('Sofía', 'Pérez', 'Sofia123', 'sofia.perez@yahoo.com', 1, 4);
-- Laboratorios de Cómputo
INSERT INTO Usuario (nombre,apellido,contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Juan', 'Olmos', 'admin', 'admin@juandoc.com', 1, 2, 1);
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Andrea', 'Muñoz', 'AdminLab2025', 'andrea.munoz@labcomputo.com', 1, 2, 1);
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Julián', 'Cortés', 'Empleado01', 'julian.cortes@labcomputo.com', 1, 3, 1);
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Daniela', 'Lagos', 'Empleado02', 'daniela.lagos@labcomputo.com', 1, 3, 1);
-- Sala de Multimedia
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Mariana', 'Guzmán', 'AdminMulti2025', 'mariana.guzman@multimedia.com', 1, 2, 2);
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Felipe', 'Santos', 'Empleado01', 'felipe.santos@multimedia.com', 1, 3, 2);
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Valeria', 'Suárez', 'Empleado02', 'valeria.suarez@multimedia.com', 1, 3, 2);
-- Biblioteca Central
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Ricardo', 'Molina', 'AdminBiblio2025', 'ricardo.molina@biblioteca.com', 1, 2, 3);
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Camila', 'Torres', 'Empleado01', 'camila.torres@biblioteca.com', 1, 3, 3);
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Héctor', 'Gómez', 'Empleado02', 'hector.gomez@biblioteca.com', 1, 3, 3);
-- Centro de Emprendimiento
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Natalia', 'Ríos', 'AdminEmp2025', 'natalia.rios@emprendimiento.com', 1, 2, 4);
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Santiago', 'Paredes', 'Empleado01', 'santiago.paredes@emprendimiento.com', 1, 3, 4);
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Diana', 'Granados', 'Empleado02', 'diana.granados@emprendimiento.com', 1, 3, 4);
-- Laboratorio de Electrónica
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Jorge', 'Fajardo', 'AdminElec2025', 'jorge.fajardo@electronica.com', 1, 2, 5);
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Melisa', 'Ortega', 'Empleado01', 'melisa.ortega@electronica.com', 1, 3, 5);
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Samuel', 'Ardila', 'Empleado02', 'samuel.ardila@electronica.com', 1, 3, 5);
-- Auditorio Principal
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Paola', 'Nieves', 'AdminAud2025', 'paola.nieves@auditorio.com', 1, 2, 6);
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Brayan', 'López', 'Empleado01', 'brayan.lopez@auditorio.com', 1, 3, 6);
INSERT INTO Usuario (nombre, apellido, contrasena, correo, activo, id_tipo_usuario, id_unidad)
 VALUES ('Tatiana', 'Mejía', 'Empleado02', 'tatiana.mejia@auditorio.com', 1, 3, 6);


--INSERCCION DE TIPOS DE RECURSO-------------------------------------------------------------------
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('PC', 'Computadora', 'Equipo de computo de escritorio o portatil', 'horario_default', 1);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Proyec', 'Proyector', 'Dispositivo para proyectar imagenes o videos', 'horario_default', 1);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Sal', 'Sala de Reuniones', 'Espacio destinado para reuniones o conferencias', 'horario_default', 1);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Lab', 'Laboratorio', 'Espacio equipado para realizar practicas o experimentos', 'horario_default', 1);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Imp', 'Impresora', 'Equipo para imprimir documentos en distintos formatos', 'horario_default', 1);

INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Cam', 'Camara de Video', 'Equipo para captura de video digital', 'horario_extendido', 2);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Mic', 'Microfono', 'Dispositivo para captura de audio', 'horario_extendido', 2);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('AulaM', 'Aula Multimedia', 'Espacio equipado con tecnologia audiovisual', 'horario_extendido', 2);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('ProyHD', 'Proyector HD', 'Proyector de alta definicion para clases o presentaciones', 'horario_extendido', 2);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('PizInt', 'Pizarra Interactiva', 'Pizarra digital con capacidades de escritura y proyeccion', 'horario_extendido', 2);

INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Libro', 'Libro Fisico', 'Ejemplar fisico disponible para consulta o prestamo', 'horario_24_7', 3);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Ebook', 'Libro Digital', 'Recurso digital accesible mediante plataforma virtual', 'horario_24_7', 3);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('SalaEst', 'Sala de Estudio', 'Espacio para estudio individual o grupal', 'horario_24_7', 3);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('PCBib', 'Computador Biblioteca', 'Estacion de computo disponible para consulta', 'horario_24_7', 3);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Cub', 'Cubiculo de Estudio', 'Espacio individual para estudio o investigacion', 'horario_24_7', 3);

INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('SalaInn', 'Sala de Innovacion', 'Espacio para desarrollo de ideas y prototipos', 'horario_medio_tiempo', 4);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Ment', 'Sala de Mentorias', 'Espacio para sesiones de orientacion profesional', 'horario_medio_tiempo', 4);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Cow', 'Espacio Coworking', 'Zona de trabajo colaborativo para estudiantes y emprendedores', 'horario_medio_tiempo', 4);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('ProImp', 'Impresora 3D', 'Dispositivo para fabricacion de prototipos rapidos', 'horario_medio_tiempo', 4);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('SalaConf', 'Sala de Conferencias', 'Espacio para eventos y presentaciones', 'horario_medio_tiempo', 4);

INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Osc', 'Osciloscopio', 'Instrumento para medir señales electricas', 'horario_nocturno', 5);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Prot', 'Protoboard', 'Tablero para ensamblaje de circuitos de prueba', 'horario_nocturno', 5);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Mult', 'Multimetro', 'Instrumento para medir magnitudes electricas', 'horario_nocturno', 5);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Sold', 'Estacion de Soldadura', 'Equipo para ensamblaje de componentes electronicos', 'horario_nocturno', 5);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('KitElec', 'Kit de Electronica', 'Conjunto de componentes basicos para practicas', 'horario_nocturno', 5);

INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Aud', 'Auditorio', 'Espacio para eventos academicos o institucionales', 'horario_fin_semana', 6);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Son', 'Sistema de Sonido', 'Equipo de amplificacion para eventos', 'horario_fin_semana', 6);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Ilum', 'Sistema de Iluminacion', 'Equipos de iluminacion para escenario', 'horario_fin_semana', 6);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('Esc', 'Escenario', 'Plataforma para presentaciones o conferencias', 'horario_fin_semana', 6);
INSERT INTO TipoRecurso (codigo_tipo_recurso, nombre_tipo_recurso, descripcion_tipo_recurso, horario_disponibilidad, id_unidad)
 VALUES ('MicIn', 'Microfonos Inalambricos', 'Equipo de microfonos para eventos', 'horario_fin_semana', 6);

--INSERCCION DE RECURSOS-------------------------------------------------------------------
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Lenovo 420', 'Computadora de escritorio en laboratorio 1', 'Disponible', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Lenovo 520', 'Computadora de escritorio en laboratorio 1', 'Disponible', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Lenovo 620', 'Computadora de escritorio en laboratorio 1', 'Disponible', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('HP ProDesk 600', 'Computadora de escritorio en laboratorio 1', 'Disponible', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Dell OptiPlex 3080', 'Computadora de escritorio en laboratorio 1', 'Disponible', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Lenovo ThinkCentre M720', 'Computadora de escritorio en laboratorio 1', 'Disponible', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('HP EliteDesk 800', 'Computadora de escritorio en laboratorio 1', 'Disponible', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Dell Precision 3430', 'Computadora de escritorio en laboratorio 1', 'Disponible', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Acer Veriton X', 'Computadora de escritorio en laboratorio 1', 'Disponible', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Asus ExpertCenter D5', 'Computadora de escritorio en laboratorio 1', 'Disponible', 1);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Epson X05', 'Proyector para sala principal', 'Disponible', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('BenQ MS550', 'Proyector para sala principal', 'Disponible', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Epson PowerLite 97H', 'Proyector para sala principal', 'Disponible', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('ViewSonic PA503S', 'Proyector para sala principal', 'Disponible', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('BenQ MH535FHD', 'Proyector para sala principal', 'Disponible', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Epson EX3260', 'Proyector para sala principal', 'Disponible', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('ViewSonic M1 Mini', 'Proyector portátil', 'Disponible', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('LG PF50KA', 'Proyector portátil', 'Disponible', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Xiaomi Mi Projector 2', 'Proyector HD', 'Disponible', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('BenQ TH585', 'Proyector Full HD', 'Disponible', 2);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala 101', 'Sala de reuniones con capacidad para 10 personas', 'Disponible', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala 102', 'Sala de reuniones con capacidad para 12 personas', 'Disponible', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala 103', 'Sala de reuniones con videoproyector', 'Disponible', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala 201', 'Sala de reuniones con sistema de sonido', 'Disponible', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala 202', 'Sala de reuniones con pantalla inteligente', 'Disponible', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala 203', 'Sala de conferencias pequeña', 'Disponible', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala 301', 'Sala para prácticas grupales', 'Disponible', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala 302', 'Sala de reuniones equipada con pizarras', 'Disponible', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala 303', 'Sala con iluminación especial', 'Disponible', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala 304', 'Sala grande con sonido ambiental', 'Disponible', 3);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio A1', 'Laboratorio equipado para prácticas de electrónica', 'Disponible', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio A2', 'Laboratorio con kits de robótica', 'Disponible', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio B1', 'Laboratorio para química básica', 'Disponible', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio B2', 'Laboratorio de física', 'Disponible', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio C1', 'Laboratorio para máquinas CNC', 'Disponible', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio C2', 'Laboratorio para prácticas de redes', 'Disponible', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio D1', 'Laboratorio de análisis de datos', 'Disponible', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio D2', 'Laboratorio para energías renovables', 'Disponible', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio E1', 'Laboratorio especializado', 'Disponible', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio E2', 'Laboratorio avanzado de prototipado', 'Disponible', 4);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Kit Arduino 01', 'Kit de electrónica para prácticas', 'Disponible', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Kit Arduino 02', 'Kit de electrónica para prácticas', 'Disponible', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Kit Raspberry 01', 'Kit de programación para IoT', 'Disponible', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Kit Raspberry 02', 'Kit de programación para IoT', 'Disponible', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cámara Canon T6', 'Cámara para proyectos audiovisuales', 'Disponible', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cámara Nikon D3500', 'Cámara para proyectos', 'Disponible', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Microscopio 01', 'Microscopio óptico básico', 'Disponible', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Microscopio 02', 'Microscopio digital', 'Disponible', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Grabadora Zoom H1', 'Grabadora de audio profesional', 'Disponible', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Multímetro Fluke 17B', 'Instrumento de medición profesional', 'Disponible', 5);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cam Sony AX1', 'Cámara de video para prácticas audiovisuales', 'Disponible', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cam Canon Vixia', 'Cámara de video para grabación de campo', 'Disponible', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cam Panasonic H90', 'Cámara de video para proyectos estudiantiles', 'Disponible', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cam Sony NX100', 'Cámara profesional para grabaciones HD', 'Disponible', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cam GoPro 8', 'Cámara compacta para grabaciones dinámicas', 'Disponible', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cam GoPro 10', 'Cámara deportiva con estabilización', 'Disponible', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cam Canon XA40', 'Cámara para producciones institucionales', 'Disponible', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cam Sony FDR', 'Cámara para grabación en 4K', 'Disponible', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cam DJI Osmo', 'Cámara estabilizada para video fluido', 'Disponible', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cam Insta360 One X', 'Cámara 360 para contenido interactivo', 'Disponible', 6);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic Shure SM58', 'Micrófono dinámico para grabación de voz', 'Disponible', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic Rode NT1', 'Micrófono de condensador para estudio', 'Disponible', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic Blue Yeti', 'Micrófono USB para locución', 'Disponible', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic AudioTechnica AT2020', 'Micrófono profesional de estudio', 'Disponible', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic Samson Q2U', 'Micrófono híbrido USB/XLR', 'Disponible', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic Rode VideoMic', 'Micrófono para cámara', 'Disponible', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic Lavalier Sony', 'Micrófono de solapa para entrevistas', 'Disponible', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic SENNHEISER MKE', 'Micrófono direccional profesional', 'Disponible', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic HyperX Quadcast', 'Micrófono para narración y streaming', 'Disponible', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic Shure MV7', 'Micrófono híbrido para podcast', 'Disponible', 7);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 201', 'Aula equipada con sonido e iluminación', 'Disponible', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 202', 'Aula con sistema de proyección HD', 'Disponible', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 203', 'Aula con equipo para teleconferencia', 'Disponible', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 204', 'Aula con computadores y proyectores', 'Disponible', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 205', 'Aula con cabina de sonido integrada', 'Disponible', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 206', 'Aula con pizarra interactiva y audio', 'Disponible', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 207', 'Aula equipada para clases híbridas', 'Disponible', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 208', 'Aula con sistema 5.1 de audio', 'Disponible', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 209', 'Aula para sesiones de grabación docente', 'Disponible', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 210', 'Aula con estación multimedia completa', 'Disponible', 8);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Proyector Epson H900', 'Proyector HD para aulas multimedia', 'Disponible', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Proyector Sony VPL', 'Proyector Full HD de alta luminosidad', 'Disponible', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Proyector BenQ MH550', 'Proyector para presentaciones académicas', 'Disponible', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Proyector LG HF60', 'Proyector compacto de alta definición', 'Disponible', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Proyector Optoma HD28', 'Proyector para eventos', 'Disponible', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Proyector ViewSonic PX701', 'Proyector para clases avanzadas', 'Disponible', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Proyector Xiaomi Wanbo', 'Proyector portátil HD', 'Disponible', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Proyector Epson EBX41', 'Proyector estándar institucional', 'Disponible', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Proyector Acer H6510BD', 'Proyector para entornos multimedia', 'Disponible', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Proyector BenQ TH670', 'Proyector HD para conferencias', 'Disponible', 9);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A01', 'Pizarra digital con sensores táctiles', 'Disponible', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A02', 'Pizarra con conectividad inalámbrica', 'Disponible', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A03', 'Pizarra con proyección integrada', 'Disponible', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A04', 'Pizarra para clases interactivas', 'Disponible', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A05', 'Pizarra táctil de alta resolución', 'Disponible', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A06', 'Pizarra con software docente', 'Disponible', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A07', 'Pizarra multipunto para colaboraciones', 'Disponible', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A08', 'Pizarra inteligente para presentaciones', 'Disponible', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A09', 'Pizarra digital con soporte móvil', 'Disponible', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A10', 'Pizarra con conectividad HDMI y USB', 'Disponible', 10);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Libro Cálculo I', 'Ejemplar físico de cálculo diferencial', 'Disponible', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Libro Álgebra Lineal', 'Ejemplar físico para consulta académica', 'Disponible', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Libro Física Mecánica', 'Libro de mecánica clásica', 'Disponible', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Libro Programación en Python', 'Manual introductorio al lenguaje Python', 'Disponible', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Libro Bases de Datos', 'Libro sobre modelado y SQL', 'Disponible', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Libro Electrónica Básica', 'Texto de circuitos y análisis electrónico', 'Disponible', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Libro Inteligencia Artificial', 'Introducción a IA y machine learning', 'Disponible', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Libro Redes de Computadores', 'Libro sobre protocolos y arquitecturas', 'Disponible', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Libro Administración de Empresas', 'Texto académico sobre gestión administrativa', 'Disponible', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Libro Estadística Aplicada', 'Libro de fundamentos estadísticos', 'Disponible', 11);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Ebook Python 101', 'Libro digital para aprender Python desde cero', 'Disponible', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Ebook Data Science Intro', 'Guía digital de ciencia de datos', 'Disponible', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Ebook Ciberseguridad Básica', 'Contenido digital sobre seguridad informática', 'Disponible', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Ebook Álgebra Moderna', 'Libro digital de matemáticas avanzadas', 'Disponible', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Ebook Algoritmos', 'Libro digital sobre análisis y diseño de algoritmos', 'Disponible', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Ebook Historia Universal', 'Libro digital histórico de estudio general', 'Disponible', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Ebook Marketing Moderno', 'Contenido digital para gestión y marketing', 'Disponible', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Ebook Machine Learning', 'Recurso digital avanzado de aprendizaje automático', 'Disponible', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Ebook Introducción a Economía', 'Libro digital económico para estudiantes', 'Disponible', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Ebook Arquitectura de Software', 'Texto digital sobre diseño de software', 'Disponible', 12);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 301', 'Sala silenciosa para grupos pequeños', 'Disponible', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 302', 'Sala equipada para trabajo colaborativo', 'Disponible', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 303', 'Sala con tablero y proyector', 'Disponible', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 304', 'Sala para estudio independiente', 'Disponible', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 305', 'Sala con capacidad para 6 personas', 'Disponible', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 306', 'Sala para práctica académica', 'Disponible', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 307', 'Sala equipada con iluminación especial', 'Disponible', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 308', 'Sala con mesa de reuniones', 'Disponible', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 309', 'Sala silenciosa con aislamiento acústico', 'Disponible', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 310', 'Sala con estación para videoconferencias', 'Disponible', 13);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 01', 'Computador para consulta académica', 'Disponible', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 02', 'Computador con acceso a bases de datos', 'Disponible', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 03', 'Estación de cómputo con software educativo', 'Disponible', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 04', 'Computador para trabajos estudiantiles', 'Disponible', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 05', 'Computador con herramientas de ofimática', 'Disponible', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 06', 'PC con acceso a plataforma virtual', 'Disponible', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 07', 'Computador para investigación académica', 'Disponible', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 08', 'PC con conexión a impresoras de red', 'Disponible', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 09', 'PC con software de análisis estadístico', 'Disponible', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 10', 'PC para búsqueda bibliográfica', 'Disponible', 14);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 1', 'Espacio individual para estudio', 'Disponible', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 2', 'Cubículo con aislamiento acústico', 'Disponible', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 3', 'Cubículo con mesa amplia', 'Disponible', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 4', 'Cubículo con iluminación dirigida', 'Disponible', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 5', 'Cubículo para estudio prolongado', 'Disponible', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 6', 'Cubículo individual cerrado', 'Disponible', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 7', 'Cubículo con conexión eléctrica y USB', 'Disponible', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 8', 'Cubículo ergonómico para estudio', 'Disponible', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 9', 'Cubículo insonorizado', 'Disponible', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 10', 'Cubículo con lámpara ajustable', 'Disponible', 15);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 1', 'Espacio equipado para desarrollo de prototipos', 'Disponible', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 2', 'Zona para ideación y modelado', 'Disponible', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 3', 'Laboratorio de prototipado con herramientas básicas', 'Ocupado', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 4', 'Sala colaborativa con mesas modulares', 'Disponible', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 5', 'Espacio para pruebas de proyectos', 'En mantenimiento', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 6', 'Sala con equipos de diseño conceptual', 'Disponible', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 7', 'Laboratorio creativo con estaciones múltiples', 'Ocupado', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 8', 'Sala equipada para innovación educativa', 'Disponible', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 9', 'Área de prototipado rápido', 'Disponible', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 10', 'Espacio híbrido para trabajos experimentales', 'Ocupado', 16);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 1', 'Espacio privado para orientación académica', 'Disponible', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 2', 'Sala equipada para sesiones grupales', 'Ocupado', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 3', 'Sala silenciosa para mentorías individuales', 'Disponible', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 4', 'Área para tutorías profesionales', 'Disponible', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 5', 'Espacio para orientación vocacional', 'En mantenimiento', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 6', 'Sala con aislamiento acústico', 'Disponible', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 7', 'Sala para entrevistas y asesorías', 'Ocupado', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 8', 'Sala pequeña para sesiones uno a uno', 'Disponible', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 9', 'Sala para coaching académico', 'Disponible', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 10', 'Sala especial para mentorías avanzadas', 'Ocupado', 17);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Coworking 1', 'Zona de trabajo colaborativo', 'Disponible', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Coworking 2', 'Espacio compartido con escritorios múltiples', 'Ocupado', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Coworking 3', 'Área con mesas agrupadas para proyectos', 'Disponible', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Coworking 4', 'Zona de coworking con paneles móviles', 'Disponible', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Coworking 5', 'Espacio de trabajo silencioso', 'Ocupado', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Coworking 6', 'Área con estaciones de trabajo flexibles', 'En mantenimiento', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Coworking 7', 'Zona abierta para emprendimientos colaborativos', 'Disponible', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Coworking 8', 'Espacio de coworking con sala lounge', 'Disponible', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Coworking 9', 'Área colaborativa con pizarras para trabajo creativo', 'Ocupado', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Coworking 10', 'Espacio de coworking con mesas modulares', 'Disponible', 18);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 1', 'Impresora para prototipado rápido', 'Disponible', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 2', 'Equipo para impresión en PLA', 'Ocupado', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 3', 'Impresora con doble extrusor', 'Disponible', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 4', 'Equipo para impresión de alta precisión', 'En mantenimiento', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 5', 'Impresora de modelos funcionales', 'Disponible', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 6', 'Impresora con soporte para ABS', 'Disponible', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 7', 'Equipo para impresión de piezas medianas', 'Ocupado', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 8', 'Impresora de prototipado industrial', 'Disponible', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 9', 'Impresora para materiales flexibles', 'Disponible', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 10', 'Equipo de impresión experimental', 'Ocupado', 19);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 1', 'Sala equipada para eventos académicos', 'Disponible', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 2', 'Auditorio pequeño para presentaciones', 'Ocupado', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 3', 'Sala con sistema de sonido profesional', 'Disponible', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 4', 'Sala ideal para seminarios y paneles', 'Disponible', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 5', 'Auditorio con capacidad media', 'En mantenimiento', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 6', 'Sala con tecnología audiovisual avanzada', 'Disponible', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 7', 'Sala para videoconferencias profesionales', 'Ocupado', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 8', 'Auditorio para capacitaciones institucionales', 'Disponible', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 9', 'Espacio para presentaciones públicas', 'Disponible', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 10', 'Sala para conferencias magistrales', 'Ocupado', 20);


INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio Tektronix TDS1001', 'Osciloscopio digital de 40MHz', 'Disponible', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio Tektronix TDS2002', 'Osciloscopio digital de 70MHz', 'Disponible', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio Rigol DS1054Z', 'Osciloscopio de 4 canales', 'Disponible', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio Rigol DS1102', 'Osciloscopio digital de 100MHz', 'Disponible', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio UNI-T UTD2102CEX', 'Osciloscopio de doble canal', 'Disponible', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio Siglent SDS1104X', 'Osciloscopio de alta precisión', 'Disponible', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio Hantek DSO5102P', 'Osciloscopio de uso académico', 'Disponible', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio Fluke 190 Series II', 'Osciloscopio portátil industrial', 'Disponible', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio Keysight DSOX2002A', 'Osciloscopio analizador avanzado', 'Disponible', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio PicoScope 2204A', 'Osciloscopio USB para prácticas', 'Disponible', 21);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Protoboard 830 Puntos', 'Protoboard estándar de prácticas', 'Disponible', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Protoboard 400 Puntos', 'Tablero compacto para circuitos básicos', 'Disponible', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Protoboard Transparente', 'Protoboard transparente para docencia', 'Disponible', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Protoboard con Fuente', 'Protoboard integrada con fuente 5V/12V', 'Disponible', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Protoboard Mini', 'Protoboard pequeña para prototipos', 'Disponible', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Protoboard XL 1660 Puntos', 'Protoboard de gran tamaño para proyectos complejos', 'Disponible', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Protoboard Doble', 'Protoboard doble conectada', 'Disponible', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Protoboard Educativa', 'Protoboard para prácticas de laboratorio', 'Disponible', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Protoboard Profesional', 'Protoboard premium de alta resistencia', 'Disponible', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Protoboard Modular', 'Protoboard con módulos expandibles', 'Disponible', 22);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Multímetro Fluke 107', 'Multímetro digital profesional', 'Disponible', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Multímetro UNI-T UT33C', 'Multímetro para mediciones básicas', 'Disponible', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Multímetro Mastech MS8268', 'Multímetro automático de alta precisión', 'Disponible', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Multímetro Fluke 115', 'Multímetro avanzado para laboratorio', 'Disponible', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Multímetro Extech EX330', 'Multímetro con medición de temperatura', 'Disponible', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Multímetro Fluke 87V', 'Multímetro premium industrial', 'Disponible', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Multímetro UNI-T UT139C', 'Multímetro con detección de voltaje NCV', 'Disponible', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Multímetro Brymen BM235', 'Multímetro profesional aislado', 'Disponible', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Multímetro Proster VC99', 'Multímetro digital de auto-rango', 'Disponible', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Multímetro ANENG AN8008', 'Multímetro económico de alta precisión', 'Disponible', 23);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Hakko FX-888D', 'Estación digital de precisión', 'Disponible', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Weller WE1010', 'Estación profesional para electrónica', 'Disponible', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Yihua 937D+', 'Estación regulable de temperatura', 'Disponible', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Quick 936A', 'Estación para prácticas de laboratorio', 'Disponible', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Gordak 936A+', 'Equipo para trabajos detallados', 'Disponible', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Atten AT938D', 'Estación con control digital', 'Disponible', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Sugon T26', 'Estación avanzada de rápida recuperación', 'Disponible', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura BST-938', 'Estación económica para enseñanza', 'Disponible', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Lukcase 937D', 'Estación básica de uso académico', 'Disponible', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Proskit SS-207B', 'Estación profesional antistática', 'Disponible', 24);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Kit Electrónica Básico', 'Kit con resistencias, capacitores y diodos', 'Disponible', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Kit Arduino Uno', 'Kit de desarrollo con placa Arduino Uno', 'Disponible', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Kit Sensores IoT', 'Kit con sensores digitales y analógicos', 'Disponible', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Kit Raspberry Pi', 'Kit de desarrollo con Raspberry Pi 4', 'Disponible', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Kit Robótica Educativa', 'Kit para prácticas de robótica', 'Disponible', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Kit Motores y Servos', 'Kit con motores DC y servomotores', 'Disponible', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Kit Electrónica Avanzada', 'Conjunto de componentes para proyectos complejos', 'Disponible', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Kit PLC Básico', 'Kit inicial de automatización industrial', 'Disponible', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Kit Energías Renovables', 'Kit educativo con paneles solares', 'Disponible', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Kit Circuitos Digitales', 'Kit de compuertas y circuitos lógicos', 'Disponible', 25);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 1', 'Auditorio principal para eventos institucionales', 'Disponible', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 2', 'Auditorio con capacidad media', 'Ocupado', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 3', 'Auditorio con insonorización mejorada', 'Disponible', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 4', 'Auditorio equipado con cabina técnica', 'Disponible', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 5', 'Auditorio para ceremonias y congresos', 'En mantenimiento', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 6', 'Sala amplia para eventos académicos', 'Disponible', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 7', 'Auditorio con accesibilidad universal', 'Disponible', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 8', 'Auditorio moderno con paneles acústicos', 'Ocupado', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 9', 'Auditorio para presentaciones públicas', 'Disponible', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 10', 'Auditorio multifuncional', 'Disponible', 26);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 1', 'Consola de sonido para eventos en auditorio', 'Disponible', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 2', 'Equipo de sonido de alta potencia', 'Ocupado', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 3', 'Sistema de audio con subwoofers', 'Disponible', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 4', 'Sistema para eventos musicales', 'Disponible', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 5', 'Equipo de sonido portátil', 'En mantenimiento', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 6', 'Sistema de audio distribuido', 'Disponible', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 7', 'Conjunto de altavoces profesionales', 'Ocupado', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 8', 'Sistema para conferencias', 'Disponible', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 9', 'Equipo de sonido para exteriores', 'Disponible', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 10', 'Equipo de alta fidelidad para eventos', 'Ocupado', 27);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 1', 'Set de luces LED para escenario', 'Disponible', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 2', 'Sistema de iluminación direccional', 'Ocupado', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 3', 'Luces móviles para presentaciones', 'Disponible', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 4', 'Sistema de iluminación ambiental', 'Disponible', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 5', 'Equipo de iluminación teatral', 'En mantenimiento', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 6', 'Luces de alta potencia', 'Disponible', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 7', 'Sistema de iluminación ajustable', 'Ocupado', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 8', 'Set de luces RGB programables', 'Disponible', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 9', 'Equipo de iluminación escénica', 'Disponible', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 10', 'Sistema automatizado para espectáculos', 'Ocupado', 28);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Escenario 1', 'Escenario para presentaciones formales', 'Disponible', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Escenario 2', 'Plataforma modular de eventos', 'Ocupado', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Escenario 3', 'Escenario con tarimas adicionales', 'Disponible', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Escenario 4', 'Plataforma amplia para teatro', 'Disponible', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Escenario 5', 'Escenario portátil para eventos pequeños', 'En mantenimiento', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Escenario 6', 'Escenario elevado para conferencias', 'Disponible', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Escenario 7', 'Plataforma multifuncional', 'Disponible', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Escenario 8', 'Escenario con acceso lateral', 'Ocupado', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Escenario 9', 'Escenario para eventos educativos', 'Disponible', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Escenario 10', 'Plataforma adaptada para espectáculos', 'Disponible', 29);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 1', 'Micrófono inalámbrico para presentadores', 'Disponible', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 2', 'Micrófono con receptor digital', 'Ocupado', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 3', 'Micrófono de mano inalámbrico', 'Disponible', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 4', 'Micrófono tipo diadema', 'Disponible', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 5', 'Micrófono inalámbrico de largo alcance', 'En mantenimiento', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 6', 'Micrófono para conferencias', 'Disponible', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 7', 'Micrófono inalámbrico profesional', 'Ocupado', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 8', 'Micrófono recargable', 'Disponible', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 9', 'Micrófono de escenario', 'Disponible', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, estado_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 10', 'Micrófono compacto para eventos', 'Ocupado', 30);


INSERT INTO Transaccion (fecha_inicio_transaccion, fecha_fin_transaccion, estado_transaccion, falla_servicio, id_tipo_transaccion, id_usuario, id_recurso, id_empleado_responsable)
  VALUES (SYSDATE, SYSDATE + 1, 'Completada', NULL, 1, 4, 'PC-1', 3);
INSERT INTO Transaccion (fecha_inicio_transaccion, fecha_fin_transaccion, estado_transaccion, falla_servicio, id_tipo_transaccion, id_usuario, id_recurso, id_empleado_responsable)
  VALUES (SYSDATE, SYSDATE + 1, 'Completada', NULL, 1, 4, 'PC-2', 3);

INSERT INTO Calificacion (id_calificacion, cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
 VALUES (1, 5, 5, 5, 1);
INSERT INTO Calificacion (id_calificacion, cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
 VALUES (2, 4, 4, 4, 2);

COMMIT;


-- 



SELECT 'Script addInfo.sql executed successfully.' AS message FROM dual;