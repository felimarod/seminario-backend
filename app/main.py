
from fastapi import FastAPI
from routers.calificacion import router as calificacion_router
from routers.devolucion import router as devolucion_router
from routers.prestamo import router as prestamo_router
from routers.recurso import router as recurso_router
from routers.reserva import router as reserva_router
from routers.tipo_recurso import router as tipo_recurso_router
from routers.unidad import router as unidad_router
from routers.usuario import router as usuario_router

app = FastAPI(
    title="API Seminario Backend",
    description="API REST para el sistema de gestión de recursos del seminario",
    version="1.0.0",
    docs_url="/docs",
    redoc_url="/redoc"
)

app.include_router(calificacion_router)
app.include_router(devolucion_router)
app.include_router(prestamo_router)
app.include_router(recurso_router)
app.include_router(reserva_router)
app.include_router(tipo_recurso_router)
app.include_router(unidad_router)
app.include_router(usuario_router)

@app.get("/", tags=["Root"])
def read_root():
    """
    Endpoint de prueba para verificar que la API está funcionando
    """
    return {"message": "API Seminario Backend funcionando", "version": "1.0.0"}
