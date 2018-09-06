#!/bin/bash

echo "\033[1;32mDocker com NGINX, Laravel, PHP7.2, Redis e MARIADB - Dynamus TI 2018 \033[0m"

echo Download Laravel
php ./docker/utils/composer create-project --prefer-dist laravel/laravel application

echo Copiando arquivo de configuração .env
cp ./docker/utils/.env ./application/.env

echo Copiando composer
mkdir ./application/bin
cp ./docker/utils/composer ./application/bin/composer

echo Instalando as dependencias
php ./application/bin/composer install

echo Generate key
cd application
php artisan key:generate

echo Startando containers
cd ..
docker-compose up -d

echo "\033[1;32mFim! Dúvidas consulte a documentação https://github.com/JuniorFreitas/dnlaravel \033[0m"