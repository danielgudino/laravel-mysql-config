#### # Laravel 8 (API REST) + PHP 8 + Mysql 8

<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://i.ibb.co/D4Rpj92/Selection-021.png" width="600"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

#### About Repository

Welcome, in this repository you can find the necessary configuration so that you can implement your laravel application with docker in the best way.

#### Requirements:
- docker
- docker-compose

### Steps:

##### [Clone the Project Repository] 
- **1.** Located in the root of this repository Execute: 
  - **git clone [https://github.com/danielgudino/laravel-mysql](https://github.com/danielgudino/laravel-mysql).**
- **Note:** The laravel-mysql repository hosts the source code of your project.

##### [Docker]
- **2.** create manual network: **docker network create Webdevelopment**
- **3.** create manual volume database: **docker volume create laraveldbdata**

##### [Docker Compose]
- **4.** docker-compose **build**
- **5.** docker-compose **up -d**

##### [Run Laravel Commands]
**6.** docker-compose exec laravel-app **composer install**
**7.** docker-compose exec laravel-app **php artisan key:generate**
**8.** docker-compose exec laravel-app **php artisan passport:install**
**9.** docker-compose exec laravel-app **php artisan migrate**

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
