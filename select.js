var mysql = require('mysql');

// Create a connection into the database
var db = mysql.createConnection({
    host    : "sql7.freemysqlhosting.net",
    port    : "3306",
    user    : "sql7244055",
    password: "Ee5FBQbYYB",
    database: "sql7244055"
});
db.connect();

// Retrive elements from database
var query = db.query('select * from sql7244055', function(err, result){
    if(err){
        console.error(err);
        return;
    }
    console.log(result);
});