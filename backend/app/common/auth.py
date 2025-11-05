from fastapi import Depends, HTTPException, status, APIRouter
from fastapi.security import OAuth2PasswordBearer, OAuth2PasswordRequestForm
from pydantic import BaseModel
from datetime import datetime, timedelta
from jose import jwt
from sqlalchemy.orm import Session
from app.usuario.models import Usuario
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

# Function to authenticate user
def authenticate_user(correo: str, password: str, db: Session):
    user = db.query(Usuario).filter(Usuario.correo == correo, Usuario.contrasena == password).first()
    print(user,correo,password)
    if not user:
        return False
    if password != user.contrasena:
        return False
    return user

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
    
    access_token = create_access_token(
        data={"sub": user.correo,
              "tipo": user.id_tipo_usuario,
              "id_usuario": user.id_usuario,
              "unidad": user.id_unidad},
        expires_delta=timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES))
    
    return {"access_token": access_token, "token_type": "bearer"}

@router.get("/protected-endpoint")
async def protected_endpoint(current_user: Usuario = Depends(get_current_user)):
    return current_user