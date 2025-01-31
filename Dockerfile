FROM python:3.8-slim-bullseye

# Set environment variables.
ENV PYTHONWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

# Set working directory.
WORKDIR /code

# Copy dependencies.
COPY requirements.txt /code/

# Install dependencies.
RUN pip install -r requirements.txt

# Copy project.
COPY . /code/

EXPOSE 8080

ENTRYPOINT [ "gunicorn", "app.main:app", "--workers", "2", "--worker-class", \
        "uvicorn.workers.UvicornWorker",  "-b", "0.0.0.0:8080" ]