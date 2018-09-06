# DNLaravel <img src="https://poser.pugx.org/laravel/framework/license.svg" alt="License">

**DNLaravel** é um ambiente pré-configurado com Docker para utilizar 

  - PHP 7.2-alpine
  - MariaDb
  - Redis
  - Nginx
  - Laravel >=5.5
  
#### Pré-requisitos

  - Docker e Docker-compose instalado
  - PHP Instalado
  - Git Instalado
  
### Instalação
Para instalar basta executar o seguinte comando
```sh
# Faça o Clone
git clone git@github.com:JuniorFreitas/dnlaravel.git
# Agora entre na pasta dnlaravel
cd dnlaravel
# Execute o script
sh start.sh
```

###Estruturas das pastas Inicial

```sh
.
+-- docker
|   +-- docker-compose.yml
    |   +-- nginx
        |   +-- certs
                |-- app.com.key
                |-- app.com.pem
    |   +-- php
            | -- php.ini
            | -- Dockerfile
    |   +-- sessions
    |   +-- utils
            | -- .env
            | -- composer
+-- application
-- start.sh
-- docker-compose.yml
-- README.md
-- LICENSE
```

Após a instalação criará a seguinte pasta **aplication** com a estrutura do projeto Laravel

###Estruturas das pastas após execução do script

```sh
.
+-- docker
|   +-- docker-compose.yml
    |   +-- mysql
    |   +-- nginx
        |   +-- certs
                |-- app.com.key
                |-- app.com.pem
        |   +--logs
            | -- hosts
            | -- default.conf
    |   +-- php
            | -- php.ini
            | -- Dockerfile
    |   +-- sessions
    |   +-- utils
            | -- .env
            | -- composer
+-- application
-- start.sh
-- docker-compose.yml
-- README.md
-- LICENSE
```
> Caso der algum conflito verifique as portas no arquivo **docker-compose.yml** e execute o seguinte comando
```sh
docker-compose up -d
```

## License

The DNLaravel is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).