FROM php:8.0-fpm-alpine

ARG NAME_FOLDER=laravel-mysql
COPY ./${NAME_FOLDER}/composer.lock ./${NAME_FOLDER}/composer.json /var/www/

RUN apk --no-cache add git \
    curl \ 
    bash \
    libzip-dev \
    libpng-dev \
    zip 

RUN docker-php-ext-install pdo pdo_mysql exif pcntl bcmath gd

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY ./${NAME_FOLDER}/ /var/www

RUN addgroup -g 1000 www && adduser -G www -g www  -D www

USER www

WORKDIR /var/www

EXPOSE 9000

CMD ["php-fpm"]