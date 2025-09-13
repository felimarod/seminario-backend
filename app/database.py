import os
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from dotenv import load_dotenv

# Cargar variables de entorno
load_dotenv()

# URL de la base de datos
DATABASE_URL = os.getenv(
    "DATABASE_URL", 
    "postgresql://seminario_dev:53m1N4R10.@localhost:5432/seminario_dev"
)

# Crear el motor de la base de datos
engine = create_engine(DATABASE_URL, echo=True)

# Crear el SessionLocal
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

# Función para obtener la sesión de la base de datos
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()