# https://hub.docker.com/_/mysql
FROM mysql:9.2.0

# Configura las credenciales de la base de datos
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=sample
ENV MYSQL_USER=sampleuser
ENV MYSQL_PASSWORD=samplepass

# Copia el script SQL de inicialización
COPY sql/db.sql /docker-entrypoint-initdb.d/

# Expone el puerto 3306
EXPOSE 3306
