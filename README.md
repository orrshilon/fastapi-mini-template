# FastAPI Minimalistic Template
This template requires python>=3.7 and is based on [orrshilon/fastapi-mini-template](https://github.com/orrshilon/fastapi-mini-template)

## Description
This is a minimalistic and extensible [FastAPI](https://fastapi.tiangolo.com/) template.

## Quickstart
### Docker Compose
1. Copy `.env.sample` to `.env`
2. Run docker compose
   ```bash
   docker compose up -d
   ```

### Locally
1. Copy `.env.sample` to `.env`
1. Create a virtual environment
2. Install the dependencies
    ```bash
    pip install -r requirements.txt && pip install -r requirements-dev.txt
    ```
3. Start the app
    ```bash
    uvicorn app.main:app --port 8080 --reload
    ```
   or
   ```bash
    PYTHONPATH=$PWD python3 app/main.py
    ```

## API Documentation
[http://localhost:8080/docs](http://localhost:8080/docs)

## Development
### Linting
 ```bash
 make lint
 ```

### Other Commands
 ```bash
 make help
 ```