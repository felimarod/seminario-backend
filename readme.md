# Proyecto Seminario

## Instalar docker

Seguir pasos en https://www.docker.com/

## Ejecutar docker compose

Dirigirse a la carpeta backend `cd backend` y ejecutar `docker compose up` para ejecutar la base de datos y el backend.

## Base de datos

Instalar la extensión https://marketplace.visualstudio.com/items?itemName=Oracle.sql-developer y configurar la conección a la base de datos.

Por defecto la configuración para la conección a la base de datos es: 

- Hostname: localhost
- Usuario: user
- Password: oracle
- Service Name: xe

Al configurar la conexion, entrar al archivo `database/scripts/user.sql` y ejecutar para agregar el usuario `seminario` cuya contraseña es `seminario`.

Cambiar la configuración de la conexión para usar el usuario recien creado. Posteriormente, ejecutar los scripts de creacion e inserción.

## Backend

Probar en `http://localhost:8080/docs`


### Verificar si se esta ejecutando el contenedor
```bash
docker ps -a
```