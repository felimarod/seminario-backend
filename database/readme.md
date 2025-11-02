# Base de datos

## Instalar docker

Seguir pasos en https://www.docker.com/

## Ejecutar docker compose

```bash
docker compose up -d
```

Instalar la extensión https://marketplace.visualstudio.com/items?itemName=Oracle.sql-developer y configurar la conección a la base de datos.

Por defecto la configuración para la conección a la base de datos es: 

- Hostname: localhost
- Usuario: user
- Password: oracle
- Service Name: xe

Al configurar la conexion, entrar al archivo ./scripts/user.sql y ejecutar para agregar el usuario `seminario` cuya contraseña es `seminario`.

Posteriormente, ejecutar los scripts de creacion e inserción.


## Verificar si se esta ejecutando el contenedor
```bash
docker ps -a
```