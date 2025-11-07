# Dockerfile - imagen web básica con Apache (httpd)
# Basada en la imagen oficial ligera alpine para Apache
FROM httpd:2.4-alpine

# Copia los archivos del sitio (opcional - usado si construyes la imagen)
COPY ./www/ /usr/local/apache2/htdocs/

# Exponer el puerto 80
EXPOSE 80

# CMD ya es heredado de la imagen httpd (arranca apache)
