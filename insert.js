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
    post_title: "Some title",
    post_content: "exemple text for exemple",
    post_date: "24/06/2018",
    idUser: "" // FK from User Table
};
// Show elements inserted into db
// var query = 
db.query('Inserted into database : ?', Post, function(err, result){ // ? est un placeholder dans mysql. Il prendra les valeurs de Post.
    // Error log
    if(err){
        console.error(err);
        return;
    }
    // Else execute query
    console.log(result);
});