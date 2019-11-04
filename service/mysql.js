const mysql = require('mysql2');
let connectionPool = mysql.createPool({
    host: '127.0.0.1',
    user : 'root',
    password: '',
    database : 'GLIB'

});

const connection = connectionPool.promise();
module.exports = connection;