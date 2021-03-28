FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

WORKDIR /app/

COPY ./backend /app
ENV PYTHONPATH=/app


RUN apt-get update && apt-get install

# Install the Python libraries
RUN pip install --no-cache-dir -r requirements.txt