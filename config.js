// config.js
require("dotenv").config();

const port = process.env.PORT || 8081;

const database = {
  host: process.env.MYSQL_HOST,
  user: process.env.MYSQL_USER,
  port: process.env.MYSQL_PORT,
  password: process.env.MYSQL_PASSWORD,
  database: process.env.MYSQL_DATABASE,
};

module.exports = { port, database };
