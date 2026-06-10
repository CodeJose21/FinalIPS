FROM python:3.9-slim

RUN groupadd -r appuser && useradd -r -g appuser appuser

# Crear directorio como root
RUN mkdir -p /app/logs && chmod 777 /app/logs

WORKDIR /app

COPY writer_app.py .

# Cambiar a usuario no-root para seguridad
USER appuser

CMD ["python", "writer_app.py"]