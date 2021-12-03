const mysql = require('mysql');
const util = require('util');

const pool = mysql.createPool({
    connectionLimit: 5,
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'randm'
});

pool.query = util.promisify(pool.query);
module.exports = pool;