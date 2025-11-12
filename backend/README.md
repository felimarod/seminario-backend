# Backend

## Configuración local
1. Setup Virtual Environment (If you are not using docker)

   ```shell
    python3 -m venv .venv
    .venv\Scripts\activate # or source .venv/bin/activate

   ```

   NOTE: If you are using VsCode and you see a popup that says use env as workspace env then click yes

2. Install dependencies:

  ```shell
    pip install -r requirements.txt
  ```


3. Create a `.env` file and input environment variables.

4. Start the application in development mode:

   ```
   fastapi dev
   ```

   In production use

   ```
    fastapi run
   ```


5. Test the application by making requests to endpoints.

  You can go to the next URI to see the ednpoints:

  http://localhost:8080/docs

6. To connect to the database, you have to:

  - run the docker container with "docker-compose up"

  - (optional) you can create a connection to the database with the next credentials

  user = seminario
  password = seminario
  host = localhost
  port = 1522
  service name = XE

7. To run the test
  - Execute the project
  - Run `pytest -v`