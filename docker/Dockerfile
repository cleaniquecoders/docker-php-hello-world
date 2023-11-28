ARG PHP_VERSION=8.3
FROM php:${PHP_VERSION}-apache

WORKDIR /app

COPY ./src /app

RUN chown -R www-data:www-data /app

COPY ./docker/000-default.conf /etc/apache2/sites-available/

EXPOSE 80
