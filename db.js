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

/* J'ai crée deux fichiers js pour manipuler les donnés dans la db mysql mais je n'ai pas fait
de modules.exports, je voulais voir avant si ce que j'avais fait fonctionne pour pouvoir l'implémenter */