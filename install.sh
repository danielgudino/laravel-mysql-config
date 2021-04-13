#!/bin/bash

git clone https://github.com/danielgudino/laravel-mysql
cp /laravel-mysql/.env.example /laravel-mysql/.env
docker network create Webdevelopment
docker volume create laraveldbdata
docker-compose build
docker-compose up -d
docker-compose exec laravel-app composer install
docker-compose exec laravel-app php artisan key:generate
docker-compose exec laravel-app php artisan migrate
docker-compose exec laravel-app php artisan passport:install