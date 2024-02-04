// db.js
const mysql = require("mysql");
const config = require("./config");

const connection = mysql.createConnection(config.database);
connection.connect((err) => {
  if (err) {
    console.error("Error connecting to MySQL database:", err);
    return;
  }
  console.log("Connected to MySQL database");
});

module.exports = connection;
