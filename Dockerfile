ARG PHP_VERSION=8.2
FROM php:${PHP_VERSION}-apache

COPY . /var/www/html

EXPOSE 80
