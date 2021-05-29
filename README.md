# BooksSGBD

## Sobre 📰

Este é um projeto desenvolvido para a UC de **Programação para web**.

O objetivo do projeto é desenvolver um Web service RESTful onde o programa deve fazer uma requisição GET, e então o servidor deve fazer uma requisição para o banco de dados para coletar os dados em JSON.
    Programa cliente (front-end), deve desenvolver uma página que, quando carregada, apresenta uma
tabela com os livros cadastrados no SGBD

------

## Requisitos do Projeto

A requisição GET para a URL /books deve retornar um array de livros cadastrados no SGBD
no formato JSON
Devem ser retornados os campos title, year e price da tabela book e os campos
first_name e last_name da tabela author
A lista de livros deve ser ordenada pelo campo year.

Nesta atividade, para o programa servidor se comunicar com o SGBD, você pode escolher entre:

Utilizar o driver padrão: mysql
Utilizar o query builder: knex
Utilizar o ORM: sequelize

O programa foi desenvolvido com o query builder KNEX


O programa cliente deve fazer uma requisição assíncrona para o Web service RESTful criado,
pode ser desenvolvido com um documento HTML simples, com código JavaScript embutido ou com react
------

## Tecnologias utilizadas 💻

- NodeJS
- Express
- Mysql2
- Knex
- React

------

## Como baixar e executar o projeto 💡

### BACK-END
```bash

# Primeiramente clone o repositorio
$ git clone https://github.com/Joaquimlagos/WebServiceRest.git

# Mova se para a pasta do back-end
$ cd BooksSGBD/api

# Agora, instale as dependencias com o comando
$ yarn install 
# ou
$ npm install

```
------

### Banco de dados

```bash
# Para rodar a aplicação é recomendado que você tenha o mysql instalado no computador/vm

$ sudo apt install mysql-server

# Para que o mysql já crie o banco de dados que foi fornecido em aula
# Mova se para a pasta database 

$ cd /BooksSGBD/api/src/database

# Então execute o comando

$ sudo mysql < dados.sql

# Agora mova se para pasta do servidor back-end (certifique-se que você esteja na pasta src)

$ cd ..

$ pwd # Verifique que você esta em /BooksSGBD/api/src

# Agora execute com o comando 
$ yarn start 
# ou
$ npm start

```

------

### Front-end 

```bash
# Mova-se para /BooksSGBD/web 

$ pwd # Verifique que você esta em /BooksSGBD/web

# Agora, instale as dependencias com o comando
$ yarn install 
# ou
$ npm install

# Agora execute o front-end 

$ yarn start 
# ou
$ npm start


```

------

## Como testar o projeto back-end💡
 O programa irá executar em localhost:3030/books

 Para testar o programa é recomendado utilizar o [insomnia](https://insomnia.rest/download) ou o [postman](https://www.postman.com).

 Utilizar o metodo http GET e fazer a requisição em localhost:3030/books

------

## Como testar o projeto front-end💡
 Após executar o comando npm start na pasta do front end, irá abrir uma aba no navegador em localhost:3000, então será renderizado a tabela com os dados fornecidos pelo banco de dados