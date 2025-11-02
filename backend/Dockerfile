FROM python:3.11


ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY . /app

RUN pip install --no-cache -r requirements.txt

# uvloop doesnt support windows
RUN pip install uvloop

CMD [ "fastapi", "run", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload" ] 