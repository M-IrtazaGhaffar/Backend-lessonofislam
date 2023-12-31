const mysql = require('mysql');
require('dotenv').config();

const connection = mysql.createConnection({
    host: process.env.HOST,
    user: process.env.USER,
    password: process.env.PASSWORD,
    database: process.env.DB
})

connection.connect((error) => {
    if (error) console.log(error);
    else console.log("Connection Successful")
})

module.exports = { connection }