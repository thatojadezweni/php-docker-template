FROM php:7.4-fpm-alpine as debug

WORKDIR /usr/app

COPY ./src ./src

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 

COPY ./composer.* ./

CMD ["composer", "install"]

CMD ["php-fpm"]