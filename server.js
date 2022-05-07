import express from "express";
import path from "path";
import mysql from "mysql2";


const pool = mysql.createPool({
    connectionLimit: 5,
    host: "localhost",
    user: "root",
    database: "turizm",
    password: ""
});

const app = express();

app.set('views engine', 'ejs');

app.use(express.static('views'));
app.use(express.json());
app.use(express.urlencoded({extended: true}));

// pool.connect( (err) => {
//     if(err) {
//         return console.error("Ошибка: " + err.message);
//     }

//     else {
//         console.log("Подключение к серверу MySQL успешно установлено");
//     }
// });




app.get('/', (req, res) => {
    res.render(path.resolve('views/pages/index.ejs'));
});

app.get('/admin', (req, res) => {
    res.sendFile(path.resolve('admin/login.html'));
});


app.post('/admin', (req, res) => {
    
    if(req.body.login === process.env.login && req.body.password === process.env.password) {
        app.get('/panel', (req, res) => {
            res.sendFile(path.resolve('admin/panel.html'));
        });
        res.redirect('/panel');
    }
    else {
        res.send('Error');
    }
});

app.post('/panel', (req, res) => {

    const sql = `INSERT INTO ${req.body.cart} (title, description, image) VALUES ('${req.body.title}', '${req.body.description}', '${req.body.file}')`;
    pool.execute(sql, function(err, result) {
        if(err) {
            console.log(err);
        }
        else {
            console.log("Данные добавлены");
        }
    }) 
    res.send('<h1>Карточка добавлена</h1>');
});

app.get('/hotel', (req, res) => {
    pool.query("SELECT * FROM hotel", (err, results) => {
        if(err) return console.log(err);
        res.render(path.resolve('views/pages/hotel.ejs'), {
            data: results
        });
    });
});

app.get('/excursions', (req, res) => {
    pool.query("SELECT * FROM excursion", (err, results) => {
        if(err) return console.log(err);
        res.render(path.resolve('views/pages/excursions.ejs'), {
            data: results
        });
    });
});

app.get('/attraction', (req, res) => {
    pool.query("SELECT * FROM attraction", (err, results) => {
        if(err) return console.log(err);
        res.render(path.resolve('views/pages/attraction.ejs'), {
            data: results
        });
    });
});

app.get('/restaurant', (req, res) => {
    pool.query("SELECT * FROM restaurant", (err, results) => {
        if(err) return console.log(err);
        res.render(path.resolve('views/pages/restaurant.ejs'), {
            data: results
        });
    });
});


// connection.query("SELECT * FROM hotel", (err, results) => {
//     product.push(results);
// });
// pool.query("SELECT * FROM hotel", (err, results) => {
//     console.log(results);
// });

app.listen(5000);