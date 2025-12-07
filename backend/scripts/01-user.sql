-- Ejecutar como DBA (SYS AS SYSDBA)
CREATE OR REPLACE DIRECTORY imagenes_dir AS '/tmp/imagenes';
COMMIT;
create user seminario identified by seminario
   default tablespace users
   temporary tablespace temp
   quota unlimited on users;
   
GRANT READ ON DIRECTORY imagenes_dir TO seminario;
grant create session to seminario;
grant create table to seminario;
grant create sequence to seminario;
grant create trigger to seminario;
grant create procedure to seminario;
-- si quieres dar todo:
-- grant unlimited tablespace to seminario;
