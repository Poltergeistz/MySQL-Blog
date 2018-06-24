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

// Insert data into database

var Post = {

};
// Show elements inserted into db
var query = db.query('Inserted into database : ?', Post, function(err, result){
    // Error log
    if(err){
        console.error(err);
        return;
    }
    // Else execute query
    console.log(result);
});