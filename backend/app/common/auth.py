from typing import Dict, Optional, Any
from fastapi import Depends, HTTPException, status, APIRouter
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm
from pydantic import BaseModel
from datetime import datetime, timedelta
from jose import jwt
from sqlalchemy.orm import Session
from app.usuario.models import Usuario
from app.usuario.schemas import UsuarioResponse
from app.unidad.selectors import UnidadSelectors
from app.usuario.selectors import UsuarioSelectors
from app.tipo_usuario.selectors import TipoUsuarioSelectors
from app.common.dependencies import get_db, get_current_user

# Setting up constants for JWT
SECRET_KEY = "cualquiercosaquevosgusteparaserunasecretkey"
ALGORITHM = "HS256"
ACCESS_TOKEN_EXPIRE_MINUTES = 30

# OAuth2 scheme setup
oauth2_scheme = OAuth2PasswordBearer(
    tokenUrl="auth/token",
    scheme_name="OAuth2PasswordBearer"
)

router = APIRouter(
    tags=["Auth"],
    responses={401: {"description": "Not authenticated"}}
)

# Pydantic model for Token response (user for OAuth2)
class Token(BaseModel):
    access_token: str
    token_type: str
    usuario: Dict[str,Any]

# Function to authenticate user
def authenticate_user(correo: str, password: str, db: Session) -> Optional[UsuarioResponse]:
    
    userRes = UsuarioSelectors.login(db=db,correo=correo, password=password)
    #userRes = UsuarioResponse.model_validate(user)
    if not userRes:
        return None
    if password != userRes.contrasena:
        return None
    userRes.unidad  = UnidadSelectors.get_by_id(db=db,id_unidad=userRes.id_unidad).nombre_unidad
    userRes.tipo_usuario = TipoUsuarioSelectors.get_by_id(db=db, id_tipo_usuario=userRes.id_tipo_usuario).nombre_tipo_usuario
    print("user,correo,passaswd")
    print(userRes,correo,password)
    return userRes

# Function to create JWT access token
def create_access_token(data: dict, expires_delta: timedelta = None):
    to_encode = data.copy()
    if expires_delta:
        expire = datetime.utcnow() + expires_delta
    else:
        expire = datetime.utcnow() + timedelta(minutes=15)

    to_encode.update({"exp": expire})
    encoded_jwt = jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)
    return encoded_jwt

# Endpoint to obtain access token
@router.post("/token", response_model=Token)
async def login_for_access_token(form_data: OAuth2PasswordRequestForm = Depends(), db: Session = Depends(get_db)):
    user = authenticate_user(form_data.username, form_data.password, db)
    if not user:
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED,
                            detail="Incorrect nombre or password", headers={"WWW-Authenticate": "Bearer"})
    
    dataUser = {"sub": user.correo,
              "id_usuario": user.id_usuario,
              "id_tipo_usuario": user.id_tipo_usuario,
              "tipo_usuario": user.tipo_usuario,
              "id_unidad": user.id_unidad,
              "unidad": user.unidad}

    access_token = create_access_token(
        data=dataUser,
        expires_delta=timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES))
    
    print({"access_token": access_token, "token_type": "bearer", "usuario":dataUser})
    return {"access_token": access_token, "token_type": "bearer", "usuario":dataUser}

@router.get("/protected-endpoint")
async def protected_endpoint(current_user: Usuario = Depends(get_current_user)):
    return current_user