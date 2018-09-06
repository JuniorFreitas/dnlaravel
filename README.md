# DNLaravel

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
sh start.sh
```
Após a instalação criará a seguinte pasta **aplication** com a estrutura do projeto Laravel
###Estruturas das pastas
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
    |   +-- logs
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
**LICENSE MIT**
