const mysql = require('mysql');
const util = require('util');

const pool = mysql.createPool({
    connectionLimit: 5,
    host: 'us-cdbr-east-04.cleardb.com',
    user: 'bba56a664ac653',
    password: '33a902c8',
    database: 'heroku_cbbb49b72c097f0'     
});

pool.query = util.promisify(pool.query);
module.exports = pool;