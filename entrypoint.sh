#!/bin/bash
set -e

# Veritabanı bağlantısını kontrol et
until PGPASSWORD=${POSTGRES_PASSWORD} psql -h "${POSTGRES_HOST}" -U "${POSTGRES_USER}" -d "${POSTGRES_DB}" -c '\q'; do
  >&2 echo "PostgreSQL'e bağlanılmayı bekleniyor - beklemede..."
  sleep 2
done

>&2 echo "PostgreSQL bağlantısı başarılı!"

# Alembic migrasyonlarını çalıştır
echo "Veritabanı şemasını güncelleme yapılıyor..."
alembic upgrade head

# Uygulamayı başlat
echo "Web uygulaması başlatılıyor..."
exec uvicorn app:app --host 0.0.0.0 --port 8000