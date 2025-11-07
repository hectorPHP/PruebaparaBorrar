# Apache + MySQL (docker-compose) - Demo

Esta configuración levanta dos contenedores:

- `web`: Apache (httpd) que sirve los archivos de `./www` en el puerto 8080.
- `db`: MySQL 8.0 con credenciales de ejemplo.

Archivos añadidos:

- `Dockerfile` - imagen base para el servicio web (copia `./www` a htdocs si se construye).
- `docker-compose.yml` - define `web` y `db`.
- `www/index.html` - página de ejemplo.

Cómo levantar el stack (PowerShell):

```powershell
# Construir y levantar en background
docker compose up -d --build

# Ver logs (opcional)
docker compose logs -f

# Parar y eliminar contenedores
docker compose down
```

Notas:
- Las variables de MySQL están en `docker-compose.yml`. Para entorno real cambia las contraseñas y/o usa un archivo `.env`.
- Si necesitas PHP en el contenedor web (LAMP), puedo crear una imagen basada en php:8-apache y añadir soporte para conectar a MySQL.
