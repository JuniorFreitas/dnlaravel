#!/bin/bash

echo "\033[1;32mDocker com NGINX, Laravel, PHP7.2 e MARIADB - Dynamus TI 2018 \033[0m"

echo Download Laravel
composer create-project --prefer-dist laravel/laravel application

echo Copiando arquivo de configuração .env
cp ./docker/utils/.env ./application/.env

echo Copiando composer
cp ./docker/utils/composer ./application/bin/composer

echo Instalando as dependencias
php ./application/bin/composer install

echo Generate key
cd application
php artisan key:generate
# docker exec -it <app-name>-app php artisan key:generate

# echo Uploading Application container 
# docker-compose up -d

# echo Copying the configuration example file
# docker exec -it <app-name>-app cp .env.example .env

# echo Install dependencies
# docker exec -it <app-name>-app composer install

# echo Generate key
# docker exec -it <app-name>-app php artisan key:generate

# echo Make migrations
# docker exec -it <app-name>-app php artisan migrate

# echo Make seeds
# docker exec -it <app-name>-app php artisan db:seed

# echo Information of new containers
# docker ps -a 