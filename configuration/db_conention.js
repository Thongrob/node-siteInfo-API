// get the client
const mysql = require('mysql2');
require('dotenv').config();

// create the connection to database
const conn = mysql.createConnection({
  host: process.env.MYSQL_HOST,
  port: '3307',
  user: process.env.MYSQL_USER,
  password: process.env.MYSQL_PASSWORD,
  database: process.env.MYSQL_DATABASE,
  
});

conn.connect((err) => {
    if (err) throw err;
    console.log('Connected to the MySql');
});

module.exports = conn;