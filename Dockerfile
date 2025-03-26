FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# PostgreSQL istemcisini kur
RUN apt-get update && apt-get install -y postgresql-client

COPY . .

# Upload dizini oluştur
RUN mkdir -p uploads

# entrypoint.sh dosyasına çalıştırma izni ver
RUN chmod +x /app/entrypoint.sh

# Expose the port on which the app runs
EXPOSE 8000

# Command to run the application
ENTRYPOINT ["/app/entrypoint.sh"]