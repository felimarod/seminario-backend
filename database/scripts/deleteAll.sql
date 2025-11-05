-- ==============================================
-- 🔥 Script seguro para eliminar objetos de BD
-- ==============================================

-- Desactivar restricciones de clave foránea si las hubiera
-- (opcional, solo si existen referencias cruzadas)
-- SET CONSTRAINTS ALL DEFERRED;

-- ==============================================
-- 🔹 Eliminar triggers (si existen)
-- ==============================================
BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER usuario_bir';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER tipo_recurso_bir';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER recurso_bir';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER trans_bir';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER calificacion_bir';
EXCEPTION WHEN OTHERS THEN NULL; END;
/

-- ==============================================
-- 🔹 Eliminar secuencias (si existen)
-- ==============================================
BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE usuario_seq';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE tipo_recurso_seq';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE recurso_seq';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE trans_seq';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE calificacion_seq';
EXCEPTION WHEN OTHERS THEN NULL; END;
/

-- ==============================================
-- 🔹 Eliminar tablas (en orden de dependencias)
-- ==============================================
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE calificacion CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE transaccion CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE tipotransaccion CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE recurso CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE tiporecurso CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE usuario_permiso CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE usuario CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE unidad CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE horariodetalle CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE horario CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE permiso CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL; END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE tipousuario CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL; END;
/

-- ==============================================
-- ✅ Confirmación
-- ==============================================
PROMPT Todas las tablas, secuencias y triggers han sido eliminados (si existían).
