const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const cors = require('cors');

const index = express();
const port = process.env.PORT || 5000;

index.use(cors());
index.use(bodyParser.urlencoded({ extended: false }));
index.use(bodyParser.json());

const pool = mysql.createPool({
  connectionLimit: 10,
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'registrations'
});

index.get('/', (req, res) => {
  pool.getConnection((err, connection) => {
    if (err) throw err;
    console.log(`connected as id ${connection.threadId}`);

    connection.query('SELECT * from students', (err, rows) => {
      connection.release();
      if (!err) {
        res.send(rows);
      } else {
        console.log(err);
      }
    });
  });
});


index.get('/:id', (req,res) =>{
    pool.getConnection((err, connection) => {
        if(err) throw err
        console.log('connected as id ${connection.threadid}')

        connection.query('SELECT * from students WHERE id = ?', [req.params.id], (err, rows) =>{
            connection.release()
            if(!err){
                res.send(rows)
            } else{
                console.log(err)
            }

        })

    })
})

index.post('/', (req, res) => {
    pool.getConnection((err, connection) => {
      if (err) {
        console.error(err);
        return res.status(500).send({ message: 'Lỗi kết nối database' });
      }
      console.log(`connected as id ${connection.threadId}`);
      const params = req.body;
  
      connection.query('INSERT INTO students SET ?', params, (err, rows) => {
        connection.release();
        if (err) {
          console.error(err);
          return res.status(400).send({ message: 'Đăng ký thất bại!' });
        } else {
          res.send({ message: 'Sinh viên đã được đăng ký thành công!' });
        }
      });
    });
  });
  

index.listen(port, () => console.log(`Listen on port ${port}`));
