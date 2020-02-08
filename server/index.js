const express = require('express');
const { Pool } = require('pg')
const app = express();
const port = 3000;


const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    database: 'postgres',
    password: 'postgres',
    port: 5432,
});

app.get('/users', (req, res) => {
    pool.query('SELECT * FROM users', (error, results) => {
        if (error) {
            res.status(500).json({
                error: error
            });
        }

        res.status(200).json(results.rows)
    })
})

app.get('/contacts', (req, res) => {
    pool.query('SELECT * FROM contacts', (error, results) => {
        if (error) {
            res.status(500).json({
                error: error
            });
        }
        
        res.status(200).json(results.rows)
    })
})

app.get('/messages', (req, res) => {
    pool.query('SELECT * FROM messages', (error, results) => {
        if (error) {
            res.status(500).json({
                error: error
            });
        }
        
        res.status(200).json(results.rows)
    })
})

app.get('/likes', (req, res) => {
    pool.query('SELECT * FROM likes', (error, results) => {
        if (error) {
            res.status(500).json({
                error: error
            });
        }
        
        res.status(200).json(results.rows)
    })
})

app.listen(port, () => console.log(`Example app listening on port ${port}!`));