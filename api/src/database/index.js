//const mysql = require('mysql2');
const knex = require('knex');

require("dotenv").config();

const db = knex({
  client: 'mysql2',
  connection: {
    host: process.env.HOST,
    user: process.env.USUARIO,
    password: process.env.SENHA,
    database: process.env.BANCODEDADOS,
  },
});
module.exports = db;