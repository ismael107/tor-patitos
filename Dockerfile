FROM nginx:latest

# Copiar el archivo de configuración personalizado de nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copiar los archivos HTML al directorio de nginx
COPY html /usr/share/nginx/html

# Exponer el puerto 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
