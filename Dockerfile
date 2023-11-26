ARG PHP_VERSION=8.2
FROM php:${PHP_VERSION}-apache

COPY ./src /var/www/html

EXPOSE 80
