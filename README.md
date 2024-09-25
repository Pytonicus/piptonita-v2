# Piptonita V2 - Nueva verión mejorada de Piptonita

## Stack Tecnológico

### Backend

1. Django: http://localhost:8000
2. Django-ninja (proximamente)

### Frontend

1. React: http://localhost:3000

### Database

1. PostgreSQL
2. pgAdmin: http://localhost:5050

## Ejecución del proyecto

1. Ejecutar ``docker compose up`` (arrancan todos los servicios y se ejecutan las migraciones de django en cada arranque)

### Crear superusuario (solo la primera vez)

1. Revisar contenedores activos para ver id de **piptonita-backend**: ``docker ps`` (si no esta activo no podrás acceder en el siguiente paso)
2. Con la infraestructura en marcha abrir terminal del contenedor **piptonita-backend**: ``docker exec -it <CONTAINER ID> /bin/bash``
3. Ejecutar comando para crear superusuario: ``python manage.py createsuperuser``

### Acceder a pgAdmin

1. Ir a la ruta: http://localhost:5050 e introducir el usuario default@admin.com y contraseña default (estas credenciales serán reemplazadas al implementar ansible para producción pero seguirán funcionales en local)
2. Aquí añadimos un nuevo servidor: en pestaña general ponemos el nombre que queramos (ej: piptonita db server) y en pestaña Conexión escribimos **default** en el campo Nombre/Dirección de servidor y escribimos **default** en el campo contraseña.
3. A la izquierda podremos desplegar la conexión y abrir el servidor.
