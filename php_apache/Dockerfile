ARG PHP_VERSION=""
FROM php:${PHP_VERSION:+${PHP_VERSION}-}apache
RUN apt update; \
    apt upgrade; \
    apt install libpng-dev libonig-dev -y;
RUN openssl req -new -newkey rsa:4096 -days 3650 -nodes -x509 -subj \
    "/C=IR/ST=Tehran/L=Tehran/O=Site/CN=site.com" \
    -keyout /etc/ssl/private/ssl-cert-snakeoil.key -out /etc/ssl/certs/ssl-cert-snakeoil.crt
RUN a2enmod rewrite && a2enmod ssl && service apache2 restart 
RUN docker-php-ext-install mysqli pdo pdo_mysql mbstring gd tokenizer opcache bcmath
