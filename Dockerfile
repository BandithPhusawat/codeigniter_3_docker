# Dockerfile
FROM i386/php:5.6-apache

# mod_rewrite
RUN a2enmod rewrite

# copy source code into Apache root
COPY ./app /var/www/html/

# Apache
RUN chown -R www-data:www-data /var/www/html

# setup working directory
WORKDIR /var/www/html