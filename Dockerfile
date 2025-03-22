#https://hub.docker.com/_/php

FROM php:7.1-apache
RUN docker-php-ext-install pdo pdo_mysql mysqli && a2enmod rewrite
RUN a2enmod rewrite
COPY . /var/www/html/
RUN chown -R www-data:www-data /var/www/html
RUN echo '<Directory /var/www/html/>\n\
    Options Indexes FollowSymLinks\n\
    AllowOverride All\n\
    Require all granted\n\
</Directory>' > /etc/apache2/conf-available/allow-access.conf && \
    a2enconf allow-access

EXPOSE 80

CMD ["apache2-foreground"]