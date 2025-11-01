-- Ejecutar como DBA (SYS AS SYSDBA)
create user seminario identified by seminario
   default tablespace users
   temporary tablespace temp
   quota unlimited on users;

grant create session to seminario;
grant create table to seminario;
grant create sequence to seminario;
grant create trigger to seminario;
grant create procedure to seminario;
-- si quieres dar todo:
grant unlimited tablespace to seminario;