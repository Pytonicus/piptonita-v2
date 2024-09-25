#!/bin/bash

while ! nc -z db 5432; do
  echo "Esperando a que la base de datos esté disponible..."
  sleep 1
done

echo "Ejecutando makemigrations..."
python manage.py makemigrations
echo "Ejecutando migrate..."
python manage.py migrate

exec "$@"
