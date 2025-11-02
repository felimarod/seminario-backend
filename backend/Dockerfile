FROM python:3.13-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache -r requirements.txt

CMD [ "fastapi", "dev", "--host", "0.0.0.0", "--port", "8080", "--reload" ]