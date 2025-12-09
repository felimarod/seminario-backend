CONNECT seminario/seminario;
INSERT INTO TipoUsuario (id_tipo_usuario, nombre_tipo_usuario)
 VALUES (1,'superadmin');
INSERT INTO TipoUsuario (id_tipo_usuario, nombre_tipo_usuario)
 VALUES (2,'admin unidad');
INSERT INTO TipoUsuario (id_tipo_usuario, nombre_tipo_usuario)
 VALUES (3,'empleado');
INSERT INTO TipoUsuario (id_tipo_usuario, nombre_tipo_usuario)
 VALUES (4,'usuario');


--INSERCCION DE HORARIOS-------------------------------------------------------------------
INSERT INTO Horario (id_horario)
 VALUES ('horario_default');

INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Lunes', '08:00:00', '18:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Martes', '08:00:00', '18:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Miércoles', '08:00:00', '18:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Jueves', '08:00:00', '18:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Viernes', '08:00:00', '18:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Sábado', '08:00:00', '14:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_default', 'Domingo', '00:00:00', '00:00:00');

INSERT INTO Horario (id_horario)
 VALUES ('horario_extendido');

INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_extendido', 'Lunes', '06:00:00', '22:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_extendido', 'Martes', '06:00:00', '22:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_extendido', 'Miércoles', '06:00:00', '22:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_extendido', 'Jueves', '06:00:00', '22:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_extendido', 'Viernes', '06:00:00', '22:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_extendido', 'Sábado', '08:00:00', '20:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_extendido', 'Domingo', '08:00:00', '18:00:00');

INSERT INTO Horario (id_horario)
 VALUES ('horario_nocturno');

INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_nocturno', 'Lunes', '18:00:00', '06:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_nocturno', 'Martes', '18:00:00', '06:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_nocturno', 'Miércoles', '18:00:00', '06:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_nocturno', 'Jueves', '18:00:00', '06:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_nocturno', 'Viernes', '18:00:00', '06:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_nocturno', 'Sábado', '18:00:00', '06:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_nocturno', 'Domingo', '18:00:00', '06:00:00');

INSERT INTO Horario (id_horario)
 VALUES ('horario_fin_semana');

INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_fin_semana', 'Lunes', '00:00:00', '00:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_fin_semana', 'Martes', '00:00:00', '00:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_fin_semana', 'Miércoles', '00:00:00', '00:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_fin_semana', 'Jueves', '00:00:00', '00:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_fin_semana', 'Viernes', '00:00:00', '00:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_fin_semana', 'Sábado', '08:00:00', '22:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_fin_semana', 'Domingo', '08:00:00', '20:00:00');

INSERT INTO Horario (id_horario)
 VALUES ('horario_medio_tiempo');

INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_medio_tiempo', 'Lunes', '08:00:00', '12:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_medio_tiempo', 'Martes', '08:00:00', '12:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_medio_tiempo', 'Miércoles', '08:00:00', '12:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_medio_tiempo', 'Jueves', '08:00:00', '12:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_medio_tiempo', 'Viernes', '08:00:00', '12:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_medio_tiempo', 'Sábado', '08:00:00', '12:00:00');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_medio_tiempo', 'Domingo', '00:00:00', '00:00:00');

INSERT INTO Horario (id_horario)
 VALUES ('horario_24_7');

INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_24_7', 'Lunes', '00:00:00', '23:59:59');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_24_7', 'Martes', '00:00:00', '23:59:59');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_24_7', 'Miércoles', '00:00:00', '23:59:59');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_24_7', 'Jueves', '00:00:00', '23:59:59');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_24_7', 'Viernes', '00:00:00', '23:59:59');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_24_7', 'Sábado', '00:00:00', '23:59:59');
INSERT INTO HorarioDetalle (id_horario, dia_semana, hora_apertura, hora_cierre)
 VALUES ('horario_24_7', 'Domingo', '00:00:00', '23:59:59');


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
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Lenovo 420', 'Computadora de escritorio en laboratorio 1', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Lenovo 520', 'Computadora de escritorio en laboratorio 1', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Lenovo 620', 'Computadora de escritorio en laboratorio 1', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('HP ProDesk 600', 'Computadora de escritorio en laboratorio 1', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Dell OptiPlex 3080', 'Computadora de escritorio en laboratorio 1', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Lenovo ThinkCentre M720', 'Computadora de escritorio en laboratorio 1', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('HP EliteDesk 800', 'Computadora de escritorio en laboratorio 1', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Dell Precision 3430', 'Computadora de escritorio en laboratorio 1', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Acer Veriton X', 'Computadora de escritorio en laboratorio 1', 1);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Asus ExpertCenter D5', 'Computadora de escritorio en laboratorio 1', 1);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Epson X05', 'Proyector para sala principal', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('BenQ MS550', 'Proyector para sala principal', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Epson PowerLite 97H', 'Proyector para sala principal', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('ViewSonic PA503S', 'Proyector para sala principal', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('BenQ MH535FHD', 'Proyector para sala principal', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Epson EX3260', 'Proyector para sala principal', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('ViewSonic M1 Mini', 'Proyector portátil', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('LG PF50KA', 'Proyector portátil', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Xiaomi Mi Projector 2', 'Proyector HD', 2);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('BenQ TH585', 'Proyector Full HD', 2);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala 101', 'Sala de reuniones con capacidad para 10 personas', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala 102', 'Sala de reuniones con capacidad para 12 personas', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala 103', 'Sala de reuniones con videoproyector', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala 201', 'Sala de reuniones con sistema de sonido', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala 202', 'Sala de reuniones con pantalla inteligente', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala 203', 'Sala de conferencias pequeña', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala 301', 'Sala para prácticas grupales', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala 302', 'Sala de reuniones equipada con pizarras', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala 303', 'Sala con iluminación especial', 3);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala 304', 'Sala grande con sonido ambiental', 3);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio A1', 'Laboratorio equipado para prácticas de electrónica', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio A2', 'Laboratorio con kits de robótica', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio B1', 'Laboratorio para química básica', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio B2', 'Laboratorio de física', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio C1', 'Laboratorio para máquinas CNC', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio C2', 'Laboratorio para prácticas de redes', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio D1', 'Laboratorio de análisis de datos', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio D2', 'Laboratorio para energías renovables', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio E1', 'Laboratorio especializado', 4);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Laboratorio E2', 'Laboratorio avanzado de prototipado', 4);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Kit Arduino 01', 'Kit de electrónica para prácticas', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Kit Arduino 02', 'Kit de electrónica para prácticas', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Kit Raspberry 01', 'Kit de programación para IoT', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Kit Raspberry 02', 'Kit de programación para IoT', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cámara Canon T6', 'Cámara para proyectos audiovisuales', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cámara Nikon D3500', 'Cámara para proyectos', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Microscopio 01', 'Microscopio óptico básico', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Microscopio 02', 'Microscopio digital', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Grabadora Zoom H1', 'Grabadora de audio profesional', 5);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Multímetro Fluke 17B', 'Instrumento de medición profesional', 5);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cam Sony AX1', 'Cámara de video para prácticas audiovisuales', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cam Canon Vixia', 'Cámara de video para grabación de campo', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cam Panasonic H90', 'Cámara de video para proyectos estudiantiles', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cam Sony NX100', 'Cámara profesional para grabaciones HD', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cam GoPro 8', 'Cámara compacta para grabaciones dinámicas', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cam GoPro 10', 'Cámara deportiva con estabilización', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cam Canon XA40', 'Cámara para producciones institucionales', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cam Sony FDR', 'Cámara para grabación en 4K', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cam DJI Osmo', 'Cámara estabilizada para video fluido', 6);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cam Insta360 One X', 'Cámara 360 para contenido interactivo', 6);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic Shure SM58', 'Micrófono dinámico para grabación de voz', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic Rode NT1', 'Micrófono de condensador para estudio', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic Blue Yeti', 'Micrófono USB para locución', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic AudioTechnica AT2020', 'Micrófono profesional de estudio', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic Samson Q2U', 'Micrófono híbrido USB/XLR', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic Rode VideoMic', 'Micrófono para cámara', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic Lavalier Sony', 'Micrófono de solapa para entrevistas', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic SENNHEISER MKE', 'Micrófono direccional profesional', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic HyperX Quadcast', 'Micrófono para narración y streaming', 7);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic Shure MV7', 'Micrófono híbrido para podcast', 7);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 201', 'Aula equipada con sonido e iluminación', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 202', 'Aula con sistema de proyección HD', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 203', 'Aula con equipo para teleconferencia', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 204', 'Aula con computadores y proyectores', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 205', 'Aula con cabina de sonido integrada', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 206', 'Aula con pizarra interactiva y audio', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 207', 'Aula equipada para clases híbridas', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 208', 'Aula con sistema 5.1 de audio', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 209', 'Aula para sesiones de grabación docente', 8);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Aula Multimedia 210', 'Aula con estación multimedia completa', 8);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Proyector Epson H900', 'Proyector HD para aulas multimedia', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Proyector Sony VPL', 'Proyector Full HD de alta luminosidad', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Proyector BenQ MH550', 'Proyector para presentaciones académicas', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Proyector LG HF60', 'Proyector compacto de alta definición', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Proyector Optoma HD28', 'Proyector para eventos', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Proyector ViewSonic PX701', 'Proyector para clases avanzadas', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Proyector Xiaomi Wanbo', 'Proyector portátil HD', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Proyector Epson EBX41', 'Proyector estándar institucional', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Proyector Acer H6510BD', 'Proyector para entornos multimedia', 9);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Proyector BenQ TH670', 'Proyector HD para conferencias', 9);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A01', 'Pizarra digital con sensores táctiles', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A02', 'Pizarra con conectividad inalámbrica', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A03', 'Pizarra con proyección integrada', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A04', 'Pizarra para clases interactivas', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A05', 'Pizarra táctil de alta resolución', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A06', 'Pizarra con software docente', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A07', 'Pizarra multipunto para colaboraciones', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A08', 'Pizarra inteligente para presentaciones', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A09', 'Pizarra digital con soporte móvil', 10);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Pizarra Interactiva A10', 'Pizarra con conectividad HDMI y USB', 10);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Libro Cálculo I', 'Ejemplar físico de cálculo diferencial', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Libro Álgebra Lineal', 'Ejemplar físico para consulta académica', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Libro Física Mecánica', 'Libro de mecánica clásica', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Libro Programación en Python', 'Manual introductorio al lenguaje Python', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Libro Bases de Datos', 'Libro sobre modelado y SQL', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Libro Electrónica Básica', 'Texto de circuitos y análisis electrónico', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Libro Inteligencia Artificial', 'Introducción a IA y machine learning', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Libro Redes de Computadores', 'Libro sobre protocolos y arquitecturas', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Libro Administración de Empresas', 'Texto académico sobre gestión administrativa', 11);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Libro Estadística Aplicada', 'Libro de fundamentos estadísticos', 11);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Ebook Python 101', 'Libro digital para aprender Python desde cero', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Ebook Data Science Intro', 'Guía digital de ciencia de datos', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Ebook Ciberseguridad Básica', 'Contenido digital sobre seguridad informática', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Ebook Álgebra Moderna', 'Libro digital de matemáticas avanzadas', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Ebook Algoritmos', 'Libro digital sobre análisis y diseño de algoritmos', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Ebook Historia Universal', 'Libro digital histórico de estudio general', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Ebook Marketing Moderno', 'Contenido digital para gestión y marketing', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Ebook Machine Learning', 'Recurso digital avanzado de aprendizaje automático', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Ebook Introducción a Economía', 'Libro digital económico para estudiantes', 12);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Ebook Arquitectura de Software', 'Texto digital sobre diseño de software', 12);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 301', 'Sala silenciosa para grupos pequeños', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 302', 'Sala equipada para trabajo colaborativo', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 303', 'Sala con tablero y proyector', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 304', 'Sala para estudio independiente', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 305', 'Sala con capacidad para 6 personas', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 306', 'Sala para práctica académica', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 307', 'Sala equipada con iluminación especial', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 308', 'Sala con mesa de reuniones', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 309', 'Sala silenciosa con aislamiento acústico', 13);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Estudio 310', 'Sala con estación para videoconferencias', 13);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 01', 'Computador para consulta académica', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 02', 'Computador con acceso a bases de datos', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 03', 'Estación de cómputo con software educativo', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 04', 'Computador para trabajos estudiantiles', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 05', 'Computador con herramientas de ofimática', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 06', 'PC con acceso a plataforma virtual', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 07', 'Computador para investigación académica', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 08', 'PC con conexión a impresoras de red', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 09', 'PC con software de análisis estadístico', 14);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('PC Biblioteca 10', 'PC para búsqueda bibliográfica', 14);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 1', 'Espacio individual para estudio', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 2', 'Cubículo con aislamiento acústico', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 3', 'Cubículo con mesa amplia', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 4', 'Cubículo con iluminación dirigida', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 5', 'Cubículo para estudio prolongado', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 6', 'Cubículo individual cerrado', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 7', 'Cubículo con conexión eléctrica y USB', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 8', 'Cubículo ergonómico para estudio', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 9', 'Cubículo insonorizado', 15);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Cubículo 10', 'Cubículo con lámpara ajustable', 15);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 1', 'Espacio equipado para desarrollo de prototipos', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 2', 'Zona para ideación y modelado', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 3', 'Laboratorio de prototipado con herramientas básicas', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 4', 'Sala colaborativa con mesas modulares', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 5', 'Espacio para pruebas de proyectos', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 6', 'Sala con equipos de diseño conceptual', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 7', 'Laboratorio creativo con estaciones múltiples', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 8', 'Sala equipada para innovación educativa', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 9', 'Área de prototipado rápido', 16);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Innovación 10', 'Espacio híbrido para trabajos experimentales', 16);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 1', 'Espacio privado para orientación académica', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 2', 'Sala equipada para sesiones grupales', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 3', 'Sala silenciosa para mentorías individuales', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 4', 'Área para tutorías profesionales', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 5', 'Espacio para orientación vocacional', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 6', 'Sala con aislamiento acústico', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 7', 'Sala para entrevistas y asesorías', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 8', 'Sala pequeña para sesiones uno a uno', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 9', 'Sala para coaching académico', 17);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Mentorías 10', 'Sala especial para mentorías avanzadas', 17);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Coworking 1', 'Zona de trabajo colaborativo', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Coworking 2', 'Espacio compartido con escritorios múltiples', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Coworking 3', 'Área con mesas agrupadas para proyectos', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Coworking 4', 'Zona de coworking con paneles móviles', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Coworking 5', 'Espacio de trabajo silencioso', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Coworking 6', 'Área con estaciones de trabajo flexibles', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Coworking 7', 'Zona abierta para emprendimientos colaborativos', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Coworking 8', 'Espacio de coworking con sala lounge', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Coworking 9', 'Área colaborativa con pizarras para trabajo creativo', 18);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Coworking 10', 'Espacio de coworking con mesas modulares', 18);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 1', 'Impresora para prototipado rápido', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 2', 'Equipo para impresión en PLA', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 3', 'Impresora con doble extrusor', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 4', 'Equipo para impresión de alta precisión', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 5', 'Impresora de modelos funcionales', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 6', 'Impresora con soporte para ABS', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 7', 'Equipo para impresión de piezas medianas', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 8', 'Impresora de prototipado industrial', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 9', 'Impresora para materiales flexibles', 19);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Impresora 3D 10', 'Equipo de impresión experimental', 19);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 1', 'Sala equipada para eventos académicos', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 2', 'Auditorio pequeño para presentaciones', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 3', 'Sala con sistema de sonido profesional', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 4', 'Sala ideal para seminarios y paneles', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 5', 'Auditorio con capacidad media', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 6', 'Sala con tecnología audiovisual avanzada', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 7', 'Sala para videoconferencias profesionales', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 8', 'Auditorio para capacitaciones institucionales', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 9', 'Espacio para presentaciones públicas', 20);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sala de Conferencias 10', 'Sala para conferencias magistrales', 20);


INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio Tektronix TDS1001', 'Osciloscopio digital de 40MHz', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio Tektronix TDS2002', 'Osciloscopio digital de 70MHz', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio Rigol DS1054Z', 'Osciloscopio de 4 canales', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio Rigol DS1102', 'Osciloscopio digital de 100MHz', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio UNI-T UTD2102CEX', 'Osciloscopio de doble canal', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio Siglent SDS1104X', 'Osciloscopio de alta precisión', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio Hantek DSO5102P', 'Osciloscopio de uso académico', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio Fluke 190 Series II', 'Osciloscopio portátil industrial', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio Keysight DSOX2002A', 'Osciloscopio analizador avanzado', 21);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Osciloscopio PicoScope 2204A', 'Osciloscopio USB para prácticas', 21);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Protoboard 830 Puntos', 'Protoboard estándar de prácticas', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Protoboard 400 Puntos', 'Tablero compacto para circuitos básicos', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Protoboard Transparente', 'Protoboard transparente para docencia', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Protoboard con Fuente', 'Protoboard integrada con fuente 5V/12V', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Protoboard Mini', 'Protoboard pequeña para prototipos', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Protoboard XL 1660 Puntos', 'Protoboard de gran tamaño para proyectos complejos', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Protoboard Doble', 'Protoboard doble conectada', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Protoboard Educativa', 'Protoboard para prácticas de laboratorio', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Protoboard Profesional', 'Protoboard premium de alta resistencia', 22);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Protoboard Modular', 'Protoboard con módulos expandibles', 22);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Multímetro Fluke 107', 'Multímetro digital profesional', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Multímetro UNI-T UT33C', 'Multímetro para mediciones básicas', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Multímetro Mastech MS8268', 'Multímetro automático de alta precisión', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Multímetro Fluke 115', 'Multímetro avanzado para laboratorio', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Multímetro Extech EX330', 'Multímetro con medición de temperatura', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Multímetro Fluke 87V', 'Multímetro premium industrial', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Multímetro UNI-T UT139C', 'Multímetro con detección de voltaje NCV', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Multímetro Brymen BM235', 'Multímetro profesional aislado', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Multímetro Proster VC99', 'Multímetro digital de auto-rango', 23);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Multímetro ANENG AN8008', 'Multímetro económico de alta precisión', 23);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Hakko FX-888D', 'Estación digital de precisión', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Weller WE1010', 'Estación profesional para electrónica', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Yihua 937D+', 'Estación regulable de temperatura', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Quick 936A', 'Estación para prácticas de laboratorio', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Gordak 936A+', 'Equipo para trabajos detallados', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Atten AT938D', 'Estación con control digital', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Sugon T26', 'Estación avanzada de rápida recuperación', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura BST-938', 'Estación económica para enseñanza', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Lukcase 937D', 'Estación básica de uso académico', 24);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Estación Soldadura Proskit SS-207B', 'Estación profesional antistática', 24);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Kit Electrónica Básico', 'Kit con resistencias, capacitores y diodos', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Kit Arduino Uno', 'Kit de desarrollo con placa Arduino Uno', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Kit Sensores IoT', 'Kit con sensores digitales y analógicos', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Kit Raspberry Pi', 'Kit de desarrollo con Raspberry Pi 4', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Kit Robótica Educativa', 'Kit para prácticas de robótica', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Kit Motores y Servos', 'Kit con motores DC y servomotores', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Kit Electrónica Avanzada', 'Conjunto de componentes para proyectos complejos', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Kit PLC Básico', 'Kit inicial de automatización industrial', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Kit Energías Renovables', 'Kit educativo con paneles solares', 25);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Kit Circuitos Digitales', 'Kit de compuertas y circuitos lógicos', 25);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 1', 'Auditorio principal para eventos institucionales', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 2', 'Auditorio con capacidad media', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 3', 'Auditorio con insonorización mejorada', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 4', 'Auditorio equipado con cabina técnica', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 5', 'Auditorio para ceremonias y congresos', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 6', 'Sala amplia para eventos académicos', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 7', 'Auditorio con accesibilidad universal', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 8', 'Auditorio moderno con paneles acústicos', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 9', 'Auditorio para presentaciones públicas', 26);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Auditorio Principal 10', 'Auditorio multifuncional', 26);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 1', 'Consola de sonido para eventos en auditorio', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 2', 'Equipo de sonido de alta potencia', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 3', 'Sistema de audio con subwoofers', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 4', 'Sistema para eventos musicales', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 5', 'Equipo de sonido portátil', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 6', 'Sistema de audio distribuido', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 7', 'Conjunto de altavoces profesionales', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 8', 'Sistema para conferencias', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 9', 'Equipo de sonido para exteriores', 27);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Sonido 10', 'Equipo de alta fidelidad para eventos', 27);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 1', 'Set de luces LED para escenario', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 2', 'Sistema de iluminación direccional', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 3', 'Luces móviles para presentaciones', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 4', 'Sistema de iluminación ambiental', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 5', 'Equipo de iluminación teatral', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 6', 'Luces de alta potencia', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 7', 'Sistema de iluminación ajustable', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 8', 'Set de luces RGB programables', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 9', 'Equipo de iluminación escénica', 28);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Sistema de Iluminación 10', 'Sistema automatizado para espectáculos', 28);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Escenario 1', 'Escenario para presentaciones formales', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Escenario 2', 'Plataforma modular de eventos', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Escenario 3', 'Escenario con tarimas adicionales', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Escenario 4', 'Plataforma amplia para teatro', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Escenario 5', 'Escenario portátil para eventos pequeños', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Escenario 6', 'Escenario elevado para conferencias', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Escenario 7', 'Plataforma multifuncional', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Escenario 8', 'Escenario con acceso lateral', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Escenario 9', 'Escenario para eventos educativos', 29);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Escenario 10', 'Plataforma adaptada para espectáculos', 29);

INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 1', 'Micrófono inalámbrico para presentadores', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 2', 'Micrófono con receptor digital', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 3', 'Micrófono de mano inalámbrico', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 4', 'Micrófono tipo diadema', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 5', 'Micrófono inalámbrico de largo alcance', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 6', 'Micrófono para conferencias', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 7', 'Micrófono inalámbrico profesional', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 8', 'Micrófono recargable', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 9', 'Micrófono de escenario', 30);
INSERT INTO Recurso (nombre_recurso, descripcion_recurso, id_tipo_recurso) 
 VALUES ('Mic Inalámbrico 10', 'Micrófono compacto para eventos', 30);

INSERT INTO EstadoTransaccion (id_estado_transaccion,nombre_estado_transaccion) VALUES (1,'Reservada');
INSERT INTO EstadoTransaccion (id_estado_transaccion,nombre_estado_transaccion) VALUES (2,'En prestamo');
INSERT INTO EstadoTransaccion (id_estado_transaccion,nombre_estado_transaccion) VALUES (3,'Cancelada');
INSERT INTO EstadoTransaccion (id_estado_transaccion,nombre_estado_transaccion) VALUES (4,'Completada');

ALTER TABLE Transaccion DISABLE ALL TRIGGERS;
-- ############################################################
-- Bloque 1: 6 reservas -> préstamo -> devolución (pasado, calificadas)
-- ############################################################
-- T1 (2025-11-23) Reserva -> Préstamo -> Completada, calificada
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (1, TO_TIMESTAMP('2025-11-23 09:00:00','YYYY-MM-DD HH24:MI:SS'),
 TO_TIMESTAMP('2025-11-23 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 2, 'PC-1', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (1, TO_TIMESTAMP('2025-11-23 06:55:00','YYYY-MM-DD HH24:MI:SS'), 1, 2); 

UPDATE Transaccion SET id_empleado_responsable = 7 WHERE id_transaccion = 1;
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (1, TO_TIMESTAMP('2025-11-23 09:05:00','YYYY-MM-DD HH24:MI:SS'), 2, 7);

INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (1, TO_TIMESTAMP('2025-11-23 12:05:00','YYYY-MM-DD HH24:MI:SS'), 4, 7);
INSERT INTO Calificacion (cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
 VALUES (5, 5, 5, 1);

-- T2 (2025-11-24) Reserva -> Préstamo -> Completada, calificada
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (2, TO_TIMESTAMP('2025-11-24 10:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-11-24 13:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 3, 'Proyec-1', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (2, TO_TIMESTAMP('2025-11-24 07:40:00','YYYY-MM-DD HH24:MI:SS'), 1, 3);

UPDATE Transaccion SET id_empleado_responsable = 10 WHERE id_transaccion = 2;
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (2, TO_TIMESTAMP('2025-11-24 10:05:00','YYYY-MM-DD HH24:MI:SS'), 2, 10);

INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (2, TO_TIMESTAMP('2025-11-24 13:10:00','YYYY-MM-DD HH24:MI:SS'), 4, 10);
INSERT INTO Calificacion (cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
 VALUES (4, 5, 4, 2);

-- T3 (2025-11-25) Reserva -> Préstamo -> Completada, calificada
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (3, TO_TIMESTAMP('2025-11-25 11:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-11-25 15:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 4, 'Sal-1', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (3, TO_TIMESTAMP('2025-11-25 08:30:00','YYYY-MM-DD HH24:MI:SS'), 1, 4);

UPDATE Transaccion SET id_empleado_responsable = 8 WHERE id_transaccion = 3;
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (3, TO_TIMESTAMP('2025-11-25 11:05:00','YYYY-MM-DD HH24:MI:SS'), 2, 8);

INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (3, TO_TIMESTAMP('2025-11-25 15:05:00','YYYY-MM-DD HH24:MI:SS'), 4, 8);
INSERT INTO Calificacion (cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
 VALUES (5, 4, 5, 3);

-- T4 (2025-11-26) Reserva -> Préstamo -> Completada, calificada
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (4, TO_TIMESTAMP('2025-11-26 09:30:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-11-26 12:30:00','YYYY-MM-DD HH24:MI:SS'), NULL, 2, 'Lab-1', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (4, TO_TIMESTAMP('2025-11-26 06:10:00','YYYY-MM-DD HH24:MI:SS'), 1, 2);

UPDATE Transaccion SET id_empleado_responsable = 11 WHERE id_transaccion = 4;
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (4, TO_TIMESTAMP('2025-11-26 09:35:00','YYYY-MM-DD HH24:MI:SS'), 2, 11);

INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (4, TO_TIMESTAMP('2025-11-26 12:35:00','YYYY-MM-DD HH24:MI:SS'), 4, 11);
INSERT INTO Calificacion (cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
 VALUES (4, 4, 4, 4);

-- T5 (2025-11-27) Reserva -> Préstamo -> Completada, calificada
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (5, TO_TIMESTAMP('2025-11-27 14:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-11-27 17:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 3, 'Imp-1', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (5, TO_TIMESTAMP('2025-11-27 13:30:00','YYYY-MM-DD HH24:MI:SS'), 1, 3);

UPDATE Transaccion SET id_empleado_responsable = 13 WHERE id_transaccion = 5;
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (5, TO_TIMESTAMP('2025-11-27 14:05:00','YYYY-MM-DD HH24:MI:SS'), 2, 13);

INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (5, TO_TIMESTAMP('2025-11-27 17:05:00','YYYY-MM-DD HH24:MI:SS'), 4, 13);
INSERT INTO Calificacion (cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
 VALUES (5, 5, 5, 5);

-- T6 (2025-11-28) Reserva -> Préstamo -> Completada, calificada
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (6, TO_TIMESTAMP('2025-11-28 08:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-11-28 10:30:00','YYYY-MM-DD HH24:MI:SS'), NULL, 4, 'PC-2', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (6, TO_TIMESTAMP('2025-11-28 07:45:00','YYYY-MM-DD HH24:MI:SS'), 1, 4);

UPDATE Transaccion SET id_empleado_responsable = 7 WHERE id_transaccion = 6;
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (6, TO_TIMESTAMP('2025-11-28 05:05:00','YYYY-MM-DD HH24:MI:SS'), 2, 7);

INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (6, TO_TIMESTAMP('2025-11-28 10:35:00','YYYY-MM-DD HH24:MI:SS'), 4, 7);
INSERT INTO Calificacion (cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
 VALUES (4, 5, 4, 6);

-- ############################################################
-- Bloque 2: 6 préstamos directos ya completados (pasado, calificados)
-- ############################################################
-- T7 (2025-11-29) Préstamo directo -> Completada
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (7, TO_TIMESTAMP('2025-11-29 09:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-11-29 11:30:00','YYYY-MM-DD HH24:MI:SS'), NULL, 2, 'PC-3', 8);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (7, TO_TIMESTAMP('2025-11-29 09:00:00','YYYY-MM-DD HH24:MI:SS'), 2, 8);

INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (7, TO_TIMESTAMP('2025-11-29 11:35:00','YYYY-MM-DD HH24:MI:SS'), 4, 8);
INSERT INTO Calificacion (cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
 VALUES (5, 4, 5, 7);

-- T8 (2025-11-30) Préstamo directo -> Completada
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (8, TO_TIMESTAMP('2025-11-30 10:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-11-30 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 3, 'Proyec-2', 7);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (8, TO_TIMESTAMP('2025-11-30 10:00:00','YYYY-MM-DD HH24:MI:SS'), 2, 7);

INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (8, TO_TIMESTAMP('2025-11-30 12:05:00','YYYY-MM-DD HH24:MI:SS'), 4, 7);
INSERT INTO Calificacion (cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
 VALUES (4, 4, 4, 8);

-- T9 (2025-12-01) Préstamo directo -> Completada
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (9, TO_TIMESTAMP('2025-12-01 08:30:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-01 10:30:00','YYYY-MM-DD HH24:MI:SS'), NULL, 4, 'Sal-2', 8);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (9, TO_TIMESTAMP('2025-12-01 08:30:00','YYYY-MM-DD HH24:MI:SS'), 2, 8);

INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (9, TO_TIMESTAMP('2025-12-01 10:35:00','YYYY-MM-DD HH24:MI:SS'), 4, 8);
INSERT INTO Calificacion (cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
 VALUES (5, 5, 4, 9);

-- T10 (2025-12-02) Préstamo directo -> Completada
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (10, TO_TIMESTAMP('2025-12-02 13:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-02 15:30:00','YYYY-MM-DD HH24:MI:SS'), NULL, 2, 'Imp-2', 7);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (10, TO_TIMESTAMP('2025-12-02 13:00:00','YYYY-MM-DD HH24:MI:SS'), 2, 7);

INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (10, TO_TIMESTAMP('2025-12-02 15:35:00','YYYY-MM-DD HH24:MI:SS'), 4, 7);
INSERT INTO Calificacion (cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
 VALUES (4, 5, 5, 10);

-- T11 (2025-12-03) Préstamo directo -> Completada
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (11, TO_TIMESTAMP('2025-12-03 09:15:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-03 11:45:00','YYYY-MM-DD HH24:MI:SS'), NULL, 3, 'Lab-2', 8);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (11, TO_TIMESTAMP('2025-12-03 09:15:00','YYYY-MM-DD HH24:MI:SS'), 2, 8);

INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (11, TO_TIMESTAMP('2025-12-03 11:50:00','YYYY-MM-DD HH24:MI:SS'), 4, 8);
INSERT INTO Calificacion (cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
 VALUES (5, 4, 4, 11);

-- T12 (2025-12-03) Préstamo directo -> Completada
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (12, TO_TIMESTAMP('2025-12-03 14:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-03 16:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 4, 'PC-4', 7);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (12, TO_TIMESTAMP('2025-12-03 14:00:00','YYYY-MM-DD HH24:MI:SS'), 2, 7);

INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (12, TO_TIMESTAMP('2025-12-03 16:05:00','YYYY-MM-DD HH24:MI:SS'), 4, 7);
INSERT INTO Calificacion (cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
 VALUES (4, 4, 5, 12);

-- ############################################################
-- Bloque 3: 4 préstamos recientes aún en préstamo (pasado cercano)
-- ############################################################
-- T13 (2025-12-04) Préstamo en curso (no completada)
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (13, TO_TIMESTAMP('2025-12-04 09:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-04 17:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 2, 'PC-5', 8);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (13, TO_TIMESTAMP('2025-12-04 09:00:00','YYYY-MM-DD HH24:MI:SS'), 2, 8);

-- T14 (2025-12-05) Préstamo en curso
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (14, TO_TIMESTAMP('2025-12-05 10:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-05 18:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 3, 'Proyec-3', 7);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (14, TO_TIMESTAMP('2025-12-05 10:00:00','YYYY-MM-DD HH24:MI:SS'), 2, 7);

-- T15 (2025-12-06) Préstamo en curso
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (15, TO_TIMESTAMP('2025-12-06 08:30:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-06 12:30:00','YYYY-MM-DD HH24:MI:SS'), NULL, 4, 'Sal-3', 7);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (15, TO_TIMESTAMP('2025-12-06 08:30:00','YYYY-MM-DD HH24:MI:SS'), 2, 7);

-- T16 (2025-12-06) Préstamo en curso
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (16, TO_TIMESTAMP('2025-12-06 13:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-06 17:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 2, 'Imp-3', 7);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (16, TO_TIMESTAMP('2025-12-06 13:00:00','YYYY-MM-DD HH24:MI:SS'), 2, 7);

-- ############################################################
-- Bloque 4: 4 reservas/préstamos de hoy (2025-12-08) con distintos estados
-- ############################################################
-- T17 Reserva hoy (pendiente)
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (17, TO_TIMESTAMP('2025-12-08 09:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-08 11:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 3, 'PC-6', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (17, TO_TIMESTAMP('2025-12-08 06:50:00','YYYY-MM-DD HH24:MI:SS'), 1, 3);

-- T18 Reserva -> Préstamo hoy (en préstamo)
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (18, TO_TIMESTAMP('2025-12-08 10:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-08 12:30:00','YYYY-MM-DD HH24:MI:SS'), NULL, 4, 'Proyec-4', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (18, TO_TIMESTAMP('2025-12-08 07:40:00','YYYY-MM-DD HH24:MI:SS'), 1, 4);

UPDATE Transaccion SET id_empleado_responsable = 7 WHERE id_transaccion = 18;
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (18, TO_TIMESTAMP('2025-12-08 10:05:00','YYYY-MM-DD HH24:MI:SS'), 2, 7);

-- T19 Préstamo directo hoy (en préstamo)
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (19, TO_TIMESTAMP('2025-12-08 11:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-08 15:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 2, 'Sal-4', 7);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (19, TO_TIMESTAMP('2025-12-08 11:00:00','YYYY-MM-DD HH24:MI:SS'), 2, 7);

-- T20 Préstamo directo hoy (en préstamo)
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (20, TO_TIMESTAMP('2025-12-08 14:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-08 18:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 3, 'Imp-4', 8);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (20, TO_TIMESTAMP('2025-12-08 14:00:00','YYYY-MM-DD HH24:MI:SS'), 2, 8);

-- ############################################################
-- Bloque 5: 5 reservas futuras cercanas (10-15 dic) aún en estado Reservada
-- ############################################################
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (21, TO_TIMESTAMP('2025-12-10 09:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-10 11:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 4, 'PC-7', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (21, TO_TIMESTAMP('2025-12-10 08:50:00','YYYY-MM-DD HH24:MI:SS'), 1, 4);

INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (22, TO_TIMESTAMP('2025-12-11 10:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-11 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 2, 'Proyec-5', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (22, TO_TIMESTAMP('2025-12-11 09:45:00','YYYY-MM-DD HH24:MI:SS'), 1, 2);

INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (23, TO_TIMESTAMP('2025-12-12 14:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-12 16:30:00','YYYY-MM-DD HH24:MI:SS'), NULL, 3, 'Sal-5', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (23, TO_TIMESTAMP('2025-12-12 13:40:00','YYYY-MM-DD HH24:MI:SS'), 1, 3);

INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (24, TO_TIMESTAMP('2025-12-13 08:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-13 10:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 4, 'Lab-3', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (24, TO_TIMESTAMP('2025-12-13 07:50:00','YYYY-MM-DD HH24:MI:SS'), 1, 4);

INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (25, TO_TIMESTAMP('2025-12-14 15:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-14 18:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 2, 'Imp-5', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (25, TO_TIMESTAMP('2025-12-14 14:40:00','YYYY-MM-DD HH24:MI:SS'), 1, 2);

-- ############################################################
-- Bloque 6: 5 reservas futuras lejanas (17-23 dic) en estado Reservada
-- ############################################################
INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (26, TO_TIMESTAMP('2025-12-17 09:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-17 12:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 3, 'PC-8', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (26, TO_TIMESTAMP('2025-12-17 08:50:00','YYYY-MM-DD HH24:MI:SS'), 1, 3);

INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (27, TO_TIMESTAMP('2025-12-18 10:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-18 13:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 4, 'Proyec-6', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (27, TO_TIMESTAMP('2025-12-18 09:45:00','YYYY-MM-DD HH24:MI:SS'), 1, 4);

INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (28, TO_TIMESTAMP('2025-12-20 11:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-20 14:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 2, 'Sal-6', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (28, TO_TIMESTAMP('2025-12-20 10:40:00','YYYY-MM-DD HH24:MI:SS'), 1, 2);

INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (29, TO_TIMESTAMP('2025-12-21 13:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-21 16:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 3, 'Lab-4', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (29, TO_TIMESTAMP('2025-12-21 12:45:00','YYYY-MM-DD HH24:MI:SS'), 1, 3);

INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (30, TO_TIMESTAMP('2025-12-23 15:00:00','YYYY-MM-DD HH24:MI:SS'), 
 TO_TIMESTAMP('2025-12-23 18:00:00','YYYY-MM-DD HH24:MI:SS'), NULL, 4, 'Imp-6', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (30, TO_TIMESTAMP('2025-12-23 14:45:00','YYYY-MM-DD HH24:MI:SS'), 1, 4);

-- ############################################################
-- Bloque 7: 5 transacciones de usuario 2 en tiempo real (hoy)
-- ############################################################

INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (31, CURRENT_TIMESTAMP - INTERVAL '3' HOUR,
 CURRENT_TIMESTAMP - INTERVAL '1' HOUR, NULL, 2, 'PC-9', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (31, CURRENT_TIMESTAMP, 1, 2); 

INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (32, CURRENT_TIMESTAMP - INTERVAL '2' HOUR,
 CURRENT_TIMESTAMP - INTERVAL '0' HOUR, NULL, 2, 'PC-10', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (32, CURRENT_TIMESTAMP, 1, 2); 

INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (33, CURRENT_TIMESTAMP - INTERVAL '1' HOUR,
 CURRENT_TIMESTAMP + INTERVAL '1' HOUR, NULL, 2, 'Proyec-7', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (33, CURRENT_TIMESTAMP, 1, 2); 

INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (34, CURRENT_TIMESTAMP - INTERVAL '0' HOUR,
 CURRENT_TIMESTAMP + INTERVAL '2' HOUR, NULL, 2, 'Proyec-8', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (34, CURRENT_TIMESTAMP, 1, 2); 

INSERT INTO Transaccion (id_transaccion, fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_usuario, id_recurso, id_empleado_responsable)
 VALUES (35, CURRENT_TIMESTAMP + INTERVAL '1' HOUR,
 CURRENT_TIMESTAMP + INTERVAL '3' HOUR, NULL, 2, 'Proyec-9', NULL);
INSERT INTO HistorialTransaccion (id_transaccion, fecha_cambio, estado_nuevo, usuario_responsable)
 VALUES (35, CURRENT_TIMESTAMP, 1, 2); 

-- Reactivar triggers y ajustar secuencia

ALTER TABLE Transaccion ENABLE ALL TRIGGERS;

ALTER SEQUENCE trans_seq RESTART START WITH 36;


-- INSERT INTO Transaccion (fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_tipo_transaccion, id_usuario, id_recurso, id_empleado_responsable)
--   VALUES (SYSDATE, SYSDATE + 1, 'Completada', NULL, 1, 4, 'PC-1', 3);
-- INSERT INTO Transaccion (fecha_inicio_transaccion, fecha_fin_transaccion, falla_servicio, id_tipo_transaccion, id_usuario, id_recurso, id_empleado_responsable)
--   VALUES (SYSDATE, SYSDATE + 1, 'Completada', NULL, 1, 4, 'PC-2', 3);

-- INSERT INTO Calificacion (id_calificacion, cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
--  VALUES (1, 5, 5, 5, 1);
-- INSERT INTO Calificacion (id_calificacion, cumplimiento_horarios, calidad_servicio, atencion_personal, id_transaccion)
--  VALUES (2, 4, 4, 4, 2);

COMMIT;

set serveroutput on;


-- Procedimiento para cargar imagen desde archivo a un recurso específico
CREATE OR REPLACE PROCEDURE cargar_imagen_recurso (
  p_ruta_archivo IN VARCHAR2,
  p_id_recurso IN VARCHAR2
) IS
  v_archivo BFILE;
  v_blob BLOB;
  v_dest_offset INTEGER := 1;
  v_src_offset INTEGER := 1;
  v_amount INTEGER;
BEGIN
  -- Verifica si el recurso existe
  SELECT foto_recurso INTO v_blob FROM Recurso WHERE id_recurso = p_id_recurso FOR UPDATE;
  
  -- Inicializa BLOB vacío si es NULL
  IF v_blob IS NULL THEN
    UPDATE Recurso SET foto_recurso = EMPTY_BLOB() WHERE id_recurso = p_id_recurso
    RETURNING foto_recurso INTO v_blob;
  END IF;
  
  -- Abre el archivo
  v_archivo := BFILENAME('IMAGENES_DIR', p_ruta_archivo);  -- Asume que 'IMAGENES_DIR' es el directorio Oracle creado
  
  -- Verifica si el archivo existe
  IF DBMS_LOB.FILEEXISTS(v_archivo) = 1 THEN
    DBMS_LOB.FILEOPEN(v_archivo, DBMS_LOB.FILE_READONLY);
    
    -- Obtiene el tamaño del archivo
    v_amount := DBMS_LOB.GETLENGTH(v_archivo);
    
    -- Carga el contenido del archivo al BLOB
    DBMS_LOB.LOADFROMFILE(v_blob, v_archivo, v_amount, v_dest_offset, v_src_offset);
    
    -- Cierra el archivo
    DBMS_LOB.FILECLOSE(v_archivo);
    
    DBMS_OUTPUT.PUT_LINE('Imagen cargada exitosamente para recurso: ' || p_id_recurso);
  ELSE
    RAISE_APPLICATION_ERROR(-20001, 'Archivo no encontrado: ' || p_ruta_archivo);
  END IF;
  
  COMMIT;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RAISE_APPLICATION_ERROR(-20002, 'Recurso no encontrado: ' || p_id_recurso);
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error al cargar imagen: ' || SQLERRM);
    IF DBMS_LOB.FILEISOPEN(v_archivo) = 1 THEN
      DBMS_LOB.FILECLOSE(v_archivo);
    END IF;
    ROLLBACK;
END cargar_imagen_recurso;
/
BEGIN
  cargar_imagen_recurso('PC.jpg', 'PC-1');
  cargar_imagen_recurso('PC.jpg', 'PC-2');
  cargar_imagen_recurso('PC.jpg', 'PC-3');
  cargar_imagen_recurso('PC.jpg', 'PC-4');
  cargar_imagen_recurso('PC.jpg', 'PC-5');
  cargar_imagen_recurso('PC.jpg', 'PC-6');
  cargar_imagen_recurso('PC.jpg', 'PC-7');
  cargar_imagen_recurso('PC.jpg', 'PC-8');
  cargar_imagen_recurso('PC.jpg', 'PC-9');
  cargar_imagen_recurso('PC.jpg', 'PC-10');

  cargar_imagen_recurso('Proyec.jpg', 'Proyec-1');
  cargar_imagen_recurso('Proyec.jpg', 'Proyec-2');
  cargar_imagen_recurso('Proyec.jpg', 'Proyec-3');
  cargar_imagen_recurso('Proyec.jpg', 'Proyec-4');
  cargar_imagen_recurso('Proyec.jpg', 'Proyec-5');
  cargar_imagen_recurso('Proyec.jpg', 'Proyec-6');
  cargar_imagen_recurso('Proyec.jpg', 'Proyec-7');
  cargar_imagen_recurso('Proyec.jpg', 'Proyec-8');
  cargar_imagen_recurso('Proyec.jpg', 'Proyec-9');
  cargar_imagen_recurso('Proyec.jpg', 'Proyec-10');

  cargar_imagen_recurso('Imp.jpg', 'Imp-1');
  cargar_imagen_recurso('Imp.jpg', 'Imp-2');
  cargar_imagen_recurso('Imp.jpg', 'Imp-3');
  cargar_imagen_recurso('Imp.jpg', 'Imp-4');
  cargar_imagen_recurso('Imp.jpg', 'Imp-5');
  cargar_imagen_recurso('Imp.jpg', 'Imp-6');
  cargar_imagen_recurso('Imp.jpg', 'Imp-7');
  cargar_imagen_recurso('Imp.jpg', 'Imp-8');
  cargar_imagen_recurso('Imp.jpg', 'Imp-9');
  cargar_imagen_recurso('Imp.jpg', 'Imp-10');

  cargar_imagen_recurso('Lab.jpg', 'Lab-1');
  cargar_imagen_recurso('Lab.jpg', 'Lab-2');
  cargar_imagen_recurso('Lab.jpg', 'Lab-3');
  cargar_imagen_recurso('Lab.jpg', 'Lab-4');
  cargar_imagen_recurso('Lab.jpg', 'Lab-5');
  cargar_imagen_recurso('Lab.jpg', 'Lab-6');
  cargar_imagen_recurso('Lab.jpg', 'Lab-7');
  cargar_imagen_recurso('Lab.jpg', 'Lab-8');
  cargar_imagen_recurso('Lab.jpg', 'Lab-9');
  cargar_imagen_recurso('Lab.jpg', 'Lab-10');

  cargar_imagen_recurso('Sal.jpg', 'Sal-1');
  cargar_imagen_recurso('Sal.jpg', 'Sal-2');
  cargar_imagen_recurso('Sal.jpg', 'Sal-3');
  cargar_imagen_recurso('Sal.jpg', 'Sal-4');
  cargar_imagen_recurso('Sal.jpg', 'Sal-5');
  cargar_imagen_recurso('Sal.jpg', 'Sal-6');
  cargar_imagen_recurso('Sal.jpg', 'Sal-7');
  cargar_imagen_recurso('Sal.jpg', 'Sal-8');
  cargar_imagen_recurso('Sal.jpg', 'Sal-9');
  cargar_imagen_recurso('Sal.jpg', 'Sal-10');

  cargar_imagen_recurso('Cam.jpg', 'Cam-1');
  cargar_imagen_recurso('Cam.jpg', 'Cam-2');
  cargar_imagen_recurso('Cam.jpg', 'Cam-3');
  cargar_imagen_recurso('Cam.jpg', 'Cam-4');
  cargar_imagen_recurso('Cam.jpg', 'Cam-5');
  cargar_imagen_recurso('Cam.jpg', 'Cam-6');
  cargar_imagen_recurso('Cam.jpg', 'Cam-7');
  cargar_imagen_recurso('Cam.jpg', 'Cam-8');
  cargar_imagen_recurso('Cam.jpg', 'Cam-9');
  cargar_imagen_recurso('Cam.jpg', 'Cam-10');

  cargar_imagen_recurso('Mic.jpg', 'Mic-1');
  cargar_imagen_recurso('Mic.jpg', 'Mic-2');
  cargar_imagen_recurso('Mic.jpg', 'Mic-3');
  cargar_imagen_recurso('Mic.jpg', 'Mic-4');
  cargar_imagen_recurso('Mic.jpg', 'Mic-5');
  cargar_imagen_recurso('Mic.jpg', 'Mic-6');
  cargar_imagen_recurso('Mic.jpg', 'Mic-7');
  cargar_imagen_recurso('Mic.jpg', 'Mic-8');
  cargar_imagen_recurso('Mic.jpg', 'Mic-9');
  cargar_imagen_recurso('Mic.jpg', 'Mic-10');

  cargar_imagen_recurso('AulaM.jpg', 'AulaM-1');
  cargar_imagen_recurso('AulaM.jpg', 'AulaM-2');
  cargar_imagen_recurso('AulaM.jpg', 'AulaM-3');
  cargar_imagen_recurso('AulaM.jpg', 'AulaM-4');
  cargar_imagen_recurso('AulaM.jpg', 'AulaM-5');
  cargar_imagen_recurso('AulaM.jpg', 'AulaM-6');
  cargar_imagen_recurso('AulaM.jpg', 'AulaM-7');
  cargar_imagen_recurso('AulaM.jpg', 'AulaM-8');
  cargar_imagen_recurso('AulaM.jpg', 'AulaM-9');
  cargar_imagen_recurso('AulaM.jpg', 'AulaM-10');

  cargar_imagen_recurso('ProyHD.jpg', 'ProyHD-1');
  cargar_imagen_recurso('ProyHD.jpg', 'ProyHD-2');
  cargar_imagen_recurso('ProyHD.jpg', 'ProyHD-3');
  cargar_imagen_recurso('ProyHD.jpg', 'ProyHD-4');
  cargar_imagen_recurso('ProyHD.jpg', 'ProyHD-5');
  cargar_imagen_recurso('ProyHD.jpg', 'ProyHD-6');
  cargar_imagen_recurso('ProyHD.jpg', 'ProyHD-7');
  cargar_imagen_recurso('ProyHD.jpg', 'ProyHD-8');
  cargar_imagen_recurso('ProyHD.jpg', 'ProyHD-9');
  cargar_imagen_recurso('ProyHD.jpg', 'ProyHD-10');

  cargar_imagen_recurso('PizInt.jpg', 'PizInt-1');
  cargar_imagen_recurso('PizInt.jpg', 'PizInt-2');
  cargar_imagen_recurso('PizInt.jpg', 'PizInt-3');
  cargar_imagen_recurso('PizInt.jpg', 'PizInt-4');
  cargar_imagen_recurso('PizInt.jpg', 'PizInt-5');
  cargar_imagen_recurso('PizInt.jpg', 'PizInt-6');
  cargar_imagen_recurso('PizInt.jpg', 'PizInt-7');
  cargar_imagen_recurso('PizInt.jpg', 'PizInt-8');
  cargar_imagen_recurso('PizInt.jpg', 'PizInt-9');
  cargar_imagen_recurso('PizInt.jpg', 'PizInt-10');

  cargar_imagen_recurso('Libro.jpg', 'Libro-1');
  cargar_imagen_recurso('Libro.jpg', 'Libro-2');
  cargar_imagen_recurso('Libro.jpg', 'Libro-3');
  cargar_imagen_recurso('Libro.jpg', 'Libro-4');
  cargar_imagen_recurso('Libro.jpg', 'Libro-5');
  cargar_imagen_recurso('Libro.jpg', 'Libro-6');
  cargar_imagen_recurso('Libro.jpg', 'Libro-7');
  cargar_imagen_recurso('Libro.jpg', 'Libro-8');
  cargar_imagen_recurso('Libro.jpg', 'Libro-9');
  cargar_imagen_recurso('Libro.jpg', 'Libro-10');

  cargar_imagen_recurso('Ebook.jpg', 'Ebook-1');
  cargar_imagen_recurso('Ebook.jpg', 'Ebook-2');
  cargar_imagen_recurso('Ebook.jpg', 'Ebook-3');
  cargar_imagen_recurso('Ebook.jpg', 'Ebook-4');
  cargar_imagen_recurso('Ebook.jpg', 'Ebook-5');
  cargar_imagen_recurso('Ebook.jpg', 'Ebook-6');
  cargar_imagen_recurso('Ebook.jpg', 'Ebook-7');
  cargar_imagen_recurso('Ebook.jpg', 'Ebook-8');
  cargar_imagen_recurso('Ebook.jpg', 'Ebook-9');
  cargar_imagen_recurso('Ebook.jpg', 'Ebook-10');

  cargar_imagen_recurso('SalaEst.jpg', 'SalaEst-1');
  cargar_imagen_recurso('SalaEst.jpg', 'SalaEst-2');
  cargar_imagen_recurso('SalaEst.jpg', 'SalaEst-3');
  cargar_imagen_recurso('SalaEst.jpg', 'SalaEst-4');
  cargar_imagen_recurso('SalaEst.jpg', 'SalaEst-5');
  cargar_imagen_recurso('SalaEst.jpg', 'SalaEst-6');
  cargar_imagen_recurso('SalaEst.jpg', 'SalaEst-7');
  cargar_imagen_recurso('SalaEst.jpg', 'SalaEst-8');
  cargar_imagen_recurso('SalaEst.jpg', 'SalaEst-9');
  cargar_imagen_recurso('SalaEst.jpg', 'SalaEst-10');

  cargar_imagen_recurso('PCBib.jpg', 'PCBib-1');
  cargar_imagen_recurso('PCBib.jpg', 'PCBib-2');
  cargar_imagen_recurso('PCBib.jpg', 'PCBib-3');
  cargar_imagen_recurso('PCBib.jpg', 'PCBib-4');
  cargar_imagen_recurso('PCBib.jpg', 'PCBib-5');
  cargar_imagen_recurso('PCBib.jpg', 'PCBib-6');
  cargar_imagen_recurso('PCBib.jpg', 'PCBib-7');
  cargar_imagen_recurso('PCBib.jpg', 'PCBib-8');
  cargar_imagen_recurso('PCBib.jpg', 'PCBib-9');
  cargar_imagen_recurso('PCBib.jpg', 'PCBib-10');

  cargar_imagen_recurso('Cub.jpg', 'Cub-1');
  cargar_imagen_recurso('Cub.jpg', 'Cub-2');
  cargar_imagen_recurso('Cub.jpg', 'Cub-3');
  cargar_imagen_recurso('Cub.jpg', 'Cub-4');
  cargar_imagen_recurso('Cub.jpg', 'Cub-5');
  cargar_imagen_recurso('Cub.jpg', 'Cub-6');
  cargar_imagen_recurso('Cub.jpg', 'Cub-7');
  cargar_imagen_recurso('Cub.jpg', 'Cub-8');
  cargar_imagen_recurso('Cub.jpg', 'Cub-9');
  cargar_imagen_recurso('Cub.jpg', 'Cub-10');

  cargar_imagen_recurso('SalaInn.jpg', 'SalaInn-1');
  cargar_imagen_recurso('SalaInn.jpg', 'SalaInn-2');
  cargar_imagen_recurso('SalaInn.jpg', 'SalaInn-3');
  cargar_imagen_recurso('SalaInn.jpg', 'SalaInn-4');
  cargar_imagen_recurso('SalaInn.jpg', 'SalaInn-5');
  cargar_imagen_recurso('SalaInn.jpg', 'SalaInn-6');
  cargar_imagen_recurso('SalaInn.jpg', 'SalaInn-7');
  cargar_imagen_recurso('SalaInn.jpg', 'SalaInn-8');
  cargar_imagen_recurso('SalaInn.jpg', 'SalaInn-9');
  cargar_imagen_recurso('SalaInn.jpg', 'SalaInn-10');

  cargar_imagen_recurso('Ment.jpg', 'Ment-1');
  cargar_imagen_recurso('Ment.jpg', 'Ment-2');
  cargar_imagen_recurso('Ment.jpg', 'Ment-3');
  cargar_imagen_recurso('Ment.jpg', 'Ment-4');
  cargar_imagen_recurso('Ment.jpg', 'Ment-5');
  cargar_imagen_recurso('Ment.jpg', 'Ment-6');
  cargar_imagen_recurso('Ment.jpg', 'Ment-7');
  cargar_imagen_recurso('Ment.jpg', 'Ment-8');
  cargar_imagen_recurso('Ment.jpg', 'Ment-9');
  cargar_imagen_recurso('Ment.jpg', 'Ment-10');

  cargar_imagen_recurso('Cow.jpg', 'Cow-1');
  cargar_imagen_recurso('Cow.jpg', 'Cow-2');
  cargar_imagen_recurso('Cow.jpg', 'Cow-3');
  cargar_imagen_recurso('Cow.jpg', 'Cow-4');
  cargar_imagen_recurso('Cow.jpg', 'Cow-5');
  cargar_imagen_recurso('Cow.jpg', 'Cow-6');
  cargar_imagen_recurso('Cow.jpg', 'Cow-7');
  cargar_imagen_recurso('Cow.jpg', 'Cow-8');
  cargar_imagen_recurso('Cow.jpg', 'Cow-9');
  cargar_imagen_recurso('Cow.jpg', 'Cow-10');

  cargar_imagen_recurso('ProImp.jpg', 'ProImp-1');
  cargar_imagen_recurso('ProImp.jpg', 'ProImp-2');
  cargar_imagen_recurso('ProImp.jpg', 'ProImp-3');
  cargar_imagen_recurso('ProImp.jpg', 'ProImp-4');
  cargar_imagen_recurso('ProImp.jpg', 'ProImp-5');
  cargar_imagen_recurso('ProImp.jpg', 'ProImp-6');
  cargar_imagen_recurso('ProImp.jpg', 'ProImp-7');
  cargar_imagen_recurso('ProImp.jpg', 'ProImp-8');
  cargar_imagen_recurso('ProImp.jpg', 'ProImp-9');
  cargar_imagen_recurso('ProImp.jpg', 'ProImp-10');

  cargar_imagen_recurso('SalaConf.jpg', 'SalaConf-1');
  cargar_imagen_recurso('SalaConf.jpg', 'SalaConf-2');
  cargar_imagen_recurso('SalaConf.jpg', 'SalaConf-3');
  cargar_imagen_recurso('SalaConf.jpg', 'SalaConf-4');
  cargar_imagen_recurso('SalaConf.jpg', 'SalaConf-5');
  cargar_imagen_recurso('SalaConf.jpg', 'SalaConf-6');
  cargar_imagen_recurso('SalaConf.jpg', 'SalaConf-7');
  cargar_imagen_recurso('SalaConf.jpg', 'SalaConf-8');
  cargar_imagen_recurso('SalaConf.jpg', 'SalaConf-9');
  cargar_imagen_recurso('SalaConf.jpg', 'SalaConf-10');

  cargar_imagen_recurso('Osc.jpg', 'Osc-1');
  cargar_imagen_recurso('Osc.jpg', 'Osc-2');
  cargar_imagen_recurso('Osc.jpg', 'Osc-3');
  cargar_imagen_recurso('Osc.jpg', 'Osc-4');
  cargar_imagen_recurso('Osc.jpg', 'Osc-5');
  cargar_imagen_recurso('Osc.jpg', 'Osc-6');
  cargar_imagen_recurso('Osc.jpg', 'Osc-7');
  cargar_imagen_recurso('Osc.jpg', 'Osc-8');
  cargar_imagen_recurso('Osc.jpg', 'Osc-9');
  cargar_imagen_recurso('Osc.jpg', 'Osc-10');

  cargar_imagen_recurso('Prot.jpg', 'Prot-1');
  cargar_imagen_recurso('Prot.jpg', 'Prot-2');
  cargar_imagen_recurso('Prot.jpg', 'Prot-3');
  cargar_imagen_recurso('Prot.jpg', 'Prot-4');
  cargar_imagen_recurso('Prot.jpg', 'Prot-5');
  cargar_imagen_recurso('Prot.jpg', 'Prot-6');
  cargar_imagen_recurso('Prot.jpg', 'Prot-7');
  cargar_imagen_recurso('Prot.jpg', 'Prot-8');
  cargar_imagen_recurso('Prot.jpg', 'Prot-9');
  cargar_imagen_recurso('Prot.jpg', 'Prot-10');

  cargar_imagen_recurso('Mult.jpg', 'Mult-1');
  cargar_imagen_recurso('Mult.jpg', 'Mult-2');
  cargar_imagen_recurso('Mult.jpg', 'Mult-3');
  cargar_imagen_recurso('Mult.jpg', 'Mult-4');
  cargar_imagen_recurso('Mult.jpg', 'Mult-5');
  cargar_imagen_recurso('Mult.jpg', 'Mult-6');
  cargar_imagen_recurso('Mult.jpg', 'Mult-7');
  cargar_imagen_recurso('Mult.jpg', 'Mult-8');
  cargar_imagen_recurso('Mult.jpg', 'Mult-9');
  cargar_imagen_recurso('Mult.jpg', 'Mult-10');

  cargar_imagen_recurso('Sold.jpg', 'Sold-1');
  cargar_imagen_recurso('Sold.jpg', 'Sold-2');
  cargar_imagen_recurso('Sold.jpg', 'Sold-3');
  cargar_imagen_recurso('Sold.jpg', 'Sold-4');
  cargar_imagen_recurso('Sold.jpg', 'Sold-5');
  cargar_imagen_recurso('Sold.jpg', 'Sold-6');
  cargar_imagen_recurso('Sold.jpg', 'Sold-7');
  cargar_imagen_recurso('Sold.jpg', 'Sold-8');
  cargar_imagen_recurso('Sold.jpg', 'Sold-9');
  cargar_imagen_recurso('Sold.jpg', 'Sold-10');

  cargar_imagen_recurso('KitElec.jpg', 'KitElec-1');
  cargar_imagen_recurso('KitElec.jpg', 'KitElec-2');
  cargar_imagen_recurso('KitElec.jpg', 'KitElec-3');
  cargar_imagen_recurso('KitElec.jpg', 'KitElec-4');
  cargar_imagen_recurso('KitElec.jpg', 'KitElec-5');
  cargar_imagen_recurso('KitElec.jpg', 'KitElec-6');
  cargar_imagen_recurso('KitElec.jpg', 'KitElec-7');
  cargar_imagen_recurso('KitElec.jpg', 'KitElec-8');
  cargar_imagen_recurso('KitElec.jpg', 'KitElec-9');
  cargar_imagen_recurso('KitElec.jpg', 'KitElec-10');

  cargar_imagen_recurso('Aud.jpg', 'Aud-1');
  cargar_imagen_recurso('Aud.jpg', 'Aud-2');
  cargar_imagen_recurso('Aud.jpg', 'Aud-3');
  cargar_imagen_recurso('Aud.jpg', 'Aud-4');
  cargar_imagen_recurso('Aud.jpg', 'Aud-5');
  cargar_imagen_recurso('Aud.jpg', 'Aud-6');
  cargar_imagen_recurso('Aud.jpg', 'Aud-7');
  cargar_imagen_recurso('Aud.jpg', 'Aud-8');
  cargar_imagen_recurso('Aud.jpg', 'Aud-9');
  cargar_imagen_recurso('Aud.jpg', 'Aud-10');

  cargar_imagen_recurso('Son.jpg', 'Son-1');
  cargar_imagen_recurso('Son.jpg', 'Son-2');
  cargar_imagen_recurso('Son.jpg', 'Son-3');
  cargar_imagen_recurso('Son.jpg', 'Son-4');
  cargar_imagen_recurso('Son.jpg', 'Son-5');
  cargar_imagen_recurso('Son.jpg', 'Son-6');
  cargar_imagen_recurso('Son.jpg', 'Son-7');
  cargar_imagen_recurso('Son.jpg', 'Son-8');
  cargar_imagen_recurso('Son.jpg', 'Son-9');
  cargar_imagen_recurso('Son.jpg', 'Son-10');

  cargar_imagen_recurso('Ilum.jpg', 'Ilum-1');
  cargar_imagen_recurso('Ilum.jpg', 'Ilum-2');
  cargar_imagen_recurso('Ilum.jpg', 'Ilum-3');
  cargar_imagen_recurso('Ilum.jpg', 'Ilum-4');
  cargar_imagen_recurso('Ilum.jpg', 'Ilum-5');
  cargar_imagen_recurso('Ilum.jpg', 'Ilum-6');
  cargar_imagen_recurso('Ilum.jpg', 'Ilum-7');
  cargar_imagen_recurso('Ilum.jpg', 'Ilum-8');
  cargar_imagen_recurso('Ilum.jpg', 'Ilum-9');
  cargar_imagen_recurso('Ilum.jpg', 'Ilum-10');

  cargar_imagen_recurso('Esc.jpg', 'Esc-1');
  cargar_imagen_recurso('Esc.jpg', 'Esc-2');
  cargar_imagen_recurso('Esc.jpg', 'Esc-3');
  cargar_imagen_recurso('Esc.jpg', 'Esc-4');
  cargar_imagen_recurso('Esc.jpg', 'Esc-5');
  cargar_imagen_recurso('Esc.jpg', 'Esc-6');
  cargar_imagen_recurso('Esc.jpg', 'Esc-7');
  cargar_imagen_recurso('Esc.jpg', 'Esc-8');
  cargar_imagen_recurso('Esc.jpg', 'Esc-9');
  cargar_imagen_recurso('Esc.jpg', 'Esc-10');

  cargar_imagen_recurso('MicIn.jpg', 'MicIn-1');
  cargar_imagen_recurso('MicIn.jpg', 'MicIn-2');
  cargar_imagen_recurso('MicIn.jpg', 'MicIn-3');
  cargar_imagen_recurso('MicIn.jpg', 'MicIn-4');
  cargar_imagen_recurso('MicIn.jpg', 'MicIn-5');
  cargar_imagen_recurso('MicIn.jpg', 'MicIn-6');
  cargar_imagen_recurso('MicIn.jpg', 'MicIn-7');
  cargar_imagen_recurso('MicIn.jpg', 'MicIn-8');
  cargar_imagen_recurso('MicIn.jpg', 'MicIn-9');
  cargar_imagen_recurso('MicIn.jpg', 'MicIn-10');
  
END;
/


-- 



SELECT 'Script addInfo.sql executed successfully.' AS message FROM dual;