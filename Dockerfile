FROM php:7.4-fpm-alpine as php_web

WORKDIR /src

COPY ./src .