const mysql = require('mysql');
const util = require('util');

const pool = mysql.createPool({
    connectionLimit: 5,
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'randm',
    port: 3307,             // Puse este puerto para solucionar un error con mi XAMPP
});

pool.query = util.promisify(pool.query);
module.exports = pool;