# type: ignore
import os
from functools import lru_cache

from pydantic_settings import BaseSettings, SettingsConfigDict


class Settings(BaseSettings):
    """The settings for the application."""

    model_config = SettingsConfigDict(env_file=".env")

    # App
    DEBUG: bool = False

    # Security
    SECRET_KEY: str = os.environ.get("SECRET_KEY")
    ACCESS_TOKEN_EXPIRE_MINUTES: int = os.environ.get("ACCESS_TOKEN_EXPIRE_MINUTES")

    # DB Settings
    DATABASE_URL: str = os.environ.get("DATABASE_URL")


@lru_cache
def get_settings():
    """This function returns the settings obj for the application."""
    return Settings()
