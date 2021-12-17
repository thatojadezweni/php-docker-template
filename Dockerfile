FROM php:7.4-fpm-alpine as php_web

WORKDIR /usr/app/src

COPY ./src .