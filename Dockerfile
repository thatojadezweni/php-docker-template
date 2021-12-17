FROM php:7.4-fpm-alpine as prod

WORKDIR /usr/app/src

COPY ./src .

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 

COPY ./composer.* ./

CMD ["composer", "install"]

CMD ["php-fpm"]