#### # Laravel 8 (API REST) + PHP 8 + Mysql 8

<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://i.ibb.co/D4Rpj92/Selection-021.png" width="600"></a></p>

<p align="center"></p>

## About Repository 🚀

Welcome, in this repository you can find the necessary configuration so that you can implement your laravel application with docker in the best way.

## Pre-requirements 📋

- docker
- docker-compose

## Automatic Installation 🔧

- **sh install.sh**

## Manual Installation 🔧

##### # _Clone the Project Repository_

- **1.** Located in the root of this repository Execute: **git clone [https://github.com/danielgudino/laravel-mysql](https://github.com/danielgudino/laravel-mysql)**
  - **Note:** The laravel-mysql repository hosts the source code of your project.
- **2.** **cp ./laravel-mysql/.env.example ./laravel-mysql/.env**

##### # _Docker_

- **3.** create manual network: **docker network create Webdevelopment**
- **4.** create manual volume database: **docker volume create laraveldbdata**

##### # _Docker Compose_

- **5.** docker-compose **build**
- **6.** docker-compose **up -d**

##### # _Run Laravel Commands_

- **7.** docker-compose exec laravel-app **composer install**
- **8.** docker-compose exec laravel-app **php artisan key:generate**
- **9.** docker-compose exec laravel-app **php artisan migrate**
- **10.** docker-compose exec laravel-app **php artisan passport:install**

<p align="center"><img src="https://i.ibb.co/k194Ydf/Selection-022.png" width="800"></p>

## Authors ✒️

- **Daniel Gudiño** - _initial work_ - [danielgudino](https://github.com/danielgudino)

## License 📄

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
