var mysql = require('mysql');
var config = require('./config'); // Exporting credentials from config.js

// Create a connection into the database
var db = mysql.createConnection(config);
db.connect();

// Retrive elements from database
// var query =  
db.query('select * from sql7244055', function(err, result){
    if(err){
        console.error(err);
        return;
    }
    console.log(result);
});