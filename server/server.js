// Author: Antonio Keefe	Updated: 11/21/2024
// Backend Logic: Node.js with Express to create an endpoint to handle the search logic.

// Connect to MySQL database and set up web server to listen for search requests at the /search endpoint.
// Fetch artist info based on selected style/category and return results as JSON.

const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const path = require('path');
const app = express();
const port = 3000;

// Enable CORS 
app.use(cors());

// Middleware to serve static files
app.use(express.static(path.join(__dirname, '../')));

// Database connection
const db = mysql.createConnection({
    host: 'taf-db-instance.cd0e62a8wt4q.us-east-1.rds.amazonaws.com',
    user: 'tkeefe',
    password: 'AKeefe312',
    database: 'tatfinder'
});

// Connect to database
db.connect(err => {
    if (err) {
        console.error('Error connecting to the database:', err);
        return;
    }
    console.log('Connected to database');
});

// Route to serve index.html
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, '../index.html'));
});

// Handle search request (search endpoint)
app.get('/search', (req, res) => {
    const { style, category } = req.query;
    let sql = `
        SELECT a.name, a.city, a.phone, a.email, a.website, a.license
        FROM artists a
        LEFT JOIN artist_styles ast ON a.id = ast.artist_id
        LEFT JOIN styles s ON ast.style_id = s.id
        LEFT JOIN artist_categories ac ON a.id = ac.artist_id
        LEFT JOIN categories c ON ac.category_id = c.id
        WHERE 1=1`;

    const params = [];
    if (style && style !== 'blank') {
        sql += ' AND s.style_name = ?';
        params.push(style);
    }
    if (category && category !== 'blank') {
        sql += ' AND c.category_name = ?';
        params.push(category);
    }

    db.query(sql, params, (err, results) => {
        if (err) {
            console.error('Database query error:', err);
            res.status(500).json({ error: 'Database query error' });
        } else {
            res.json(results);
        }
    });
});

// Start server
app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});
