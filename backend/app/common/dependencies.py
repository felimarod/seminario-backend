"""This module contains common dependencies used in the application"""

from typing import Literal

from app.common.types import PaginationParamsType
from app.core.database import SessionLocal
from app.usuario.models import Usuario



from fastapi import Depends, HTTPException, status, Request
from jose import JWTError, jwt
from sqlalchemy.orm import Session
from app.common.security import oauth2_scheme, ALGORITHM
from app.core.settings import get_settings

def get_db():
    """
    This function yields a db
    """
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

# get settings
settings = get_settings()

#

# Dependency to get the current user from the token
async def get_current_user(request:Request ,token: str = Depends(oauth2_scheme), db: Session = Depends(get_db)):
    credential_exception = HTTPException(status_code=status.HTTP_401_UNAUTHORIZED,
                                         detail="Could not validate credentials", headers={"WWW-Authenticate": "Bearer"})
    try:
        payload = jwt.decode(token, settings.SECRET_KEY, algorithms=[ALGORITHM])
        correo: str = payload.get("sub")
        if correo is None:
            raise credential_exception

    except JWTError:
        raise credential_exception

    user = db.query(Usuario).filter(Usuario.correo == correo).first()
    if user is None:
        raise credential_exception
    request.state.user = {
        "id":user.id_usuario,
        "tipo": user.id_tipo_usuario,
        "unidad": user.id_unidad
        }

def pagination_params(
    q: str | None = None,
    page: int = 1,
    size: int = 10,
    order_by: Literal["desc", "asc"] = "desc",
):
    """
    Helper Dependency for pagination
    """
    return PaginationParamsType(q=q, page=page, size=size, order_by=order_by)
