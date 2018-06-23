const mysql = require('mysql');

var mySqlClient = mysql.createConnection({
    host    : "sql7.freemysqlhosting.net",
    port    : "3306",
    user    : "sql7244055",
    password: "Ee5FBQbYYB",
    database: "sql7244055"
});

mySqlClient.connect();

module.exports = mySqlClient;