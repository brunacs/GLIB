var express = require('express');
var router = express.Router();
var mysql = require("../service/mysql");

/* GET users listing. */
router.get('/', async function(req, res, next) {
  try {
    let result = await mysql.query('select * from student');
    res.send(result[0]);
  } catch (error) {
   res.send(error); 
  }
  //res.send('respond with a resource');
});

router.post('/', async function(req, res, next) {
  console.log(req.body);
  let [row, field] = await mysql.query('insert into student set ?',req.body);
  res.send({"id":row.insertId});
});

module.exports = router;
