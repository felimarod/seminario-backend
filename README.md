# API Seminario Backend

API REST para el sistema de gestión de recursos del seminario desarrollada con FastAPI.

## Características

- API REST completa con operaciones CRUD para todas las entidades
- Documentación automática con Swagger UI
- Base de datos PostgreSQL
- Validación de datos con Pydantic
- Arquitectura modular con routers separados

## Modelos de Datos

El sistema maneja las siguientes entidades:

- **Usuario**: Gestión de usuarios del sistema
- **Unidad**: Unidades organizacionales
- **TipoRecurso**: Tipos de recursos disponibles
- **Recurso**: Recursos individuales
- **Reserva**: Reservas de recursos
- **Prestamo**: Préstamos de recursos
- **Devolucion**: Devoluciones de recursos
- **Calificacion**: Calificaciones de servicios

## Instalación

### Prerrequisitos

- Python 3.8+
- PostgreSQL
- pip

### Configuración

1. Clona el repositorio:
```bash
git clone <url-del-repositorio>
cd seminario-backend
```

2. Crea un entorno virtual:
```bash
python -m venv .venv
source .venv/bin/activate  # En Linux/macOS
# o
.venv\Scripts\activate  # En Windows
```

3. Instala las dependencias:
```bash
pip install -r requirements.txt
```

4. Configura las variables de entorno:
Copia el archivo `.env.example` a `.env` y ajusta la configuración:
```bash
cp .env.example .env
```

Edita el archivo `.env` con tu configuración de base de datos:
```properties
DATABASE_URL=postgresql://usuario:contraseña@localhost:5432/nombre_bd
```

## Uso

### Ejecutar el servidor

```bash
cd app
uvicorn main:app --reload --host 0.0.0.0 --port 8000
```

El servidor estará disponible en: `http://localhost:8000`


## Endpoints Disponibles

La API proporciona endpoints CRUD completos para todas las entidades del sistema. Para ver la documentación detallada de todos los endpoints disponibles, accede a:

- **Swagger UI**: `http://localhost:8000/docs`
- **ReDoc**: `http://localhost:8000/redoc`

Cada entidad cuenta con las siguientes operaciones:
- `GET /{entidad}/` - Obtener todos los registros
- `GET /{entidad}/{id}` - Obtener registro por ID
- `POST /{entidad}/` - Crear nuevo registro
- `PUT /{entidad}/{id}` - Actualizar registro existente
- `DELETE /{entidad}/{id}` - Eliminar registro

## Estructura del Proyecto

```
seminario-backend/
├── app/
│   ├── main.py            # Archivo principal de la aplicación
│   ├── database.py        # Configuración de base de datos
│   ├── models/            # Modelos SQLAlchemy
│   │   ├── __init__.py
│   │   ├── base.py
│   │   ├── calificacion.py
│   │   ├── devolucion.py
│   │   ├── prestamo.py
│   │   ├── recurso.py
│   │   ├── reserva.py
│   │   ├── tipo_recurso.py
│   │   ├── unidad.py
│   │   └── usuario.py
│   ├── routers/           # Routers de FastAPI
│   │   ├── calificacion.py
│   │   ├── devolucion.py
│   │   ├── prestamo.py
│   │   ├── recurso.py
│   │   ├── reserva.py
│   │   ├── tipo_recurso.py
│   │   ├── unidad.py
│   │   └── usuario.py
│   └── db/                # Archivos de base de datos
├── requirements.txt       # Dependencias del proyecto
├── .env                   # Variables de entorno
├── .env.example          # Ejemplo de variables de entorno
├── .gitignore            # Archivos a ignorar en git
└── README.md             # Documentación del proyecto
```

## Ejemplos de Uso

### Crear una nueva calificación

```bash
curl -X POST "http://localhost:8000/calificacion/" \
     -H "Content-Type: application/json" \
     -d '{
       "id_reserva": 1,
       "cumplimiento": 5,
       "calidad_recurso": 4,
       "amabilidad": 5
     }'
```

### Obtener todas las reservas

```bash
curl -X GET "http://localhost:8000/reserva/" \
     -H "accept: application/json"
```

## Tecnologías Utilizadas

- **FastAPI**: Framework web moderno y rápido para Python
- **SQLAlchemy**: ORM para Python
- **PostgreSQL**: Base de datos relacional
- **Pydantic**: Validación de datos
- **Uvicorn**: Servidor ASGI
- **python-dotenv**: Gestión de variables de entorno

## Desarrollo

### Ejecutar en modo desarrollo

```bash
cd app
uvicorn main:app --reload
```

## Licencia

Este proyecto está bajo la Licencia MIT.
