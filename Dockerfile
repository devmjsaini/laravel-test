FROM php:8.1-fpm-alpine

RUN apk add --no-cache zip libzip-dev
RUN docker-php-ext-configure zip
RUN docker-php-ext-install zip
RUN apk --update add --no-cache --virtual .php-ext-install-deps \
    libxslt-dev
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN apk add --no-cache libpng libpng-dev && docker-php-ext-install gd
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer