FROM php:8.2.3-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

WORKDIR /app
COPY . /app
WORKDIR /app/example-app