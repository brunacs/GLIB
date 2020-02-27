var express = require('express');
var router = express.Router();
var mysql = require("../service/mysql");

/* GET users listing. */
router.get('/', async function(req, res, next) {
  console.log(req.query);
  let fullName = "";
  try {
    fullName = req.query.fullName;
  } catch (error) {
    
  }
  console.log(fullName);
  try {
    if(fullName=="") {
      console.log("if");
      let result = await mysql.query('select * from student');
      res.send(result[0]);
    } else {
      console.log("else "+fullName);
      let result = await mysql.query('select * from student where FullName like \'%'+fullName+'%\';');
      res.send(result[0]);
    }
    //res.send(result[0]);
  } catch (error) {
   res.send(error); 
  }
  //res.send('respond with a resource');
});

/* POST Students in the table */
router.post('/', async function(req, res, next) {
  console.log(req.body);
  let [row, field] = await mysql.query('insert into student set ?',req.body);
  res.send({"The student was submited sucessfully. The ID is:":row.insertId});
});

module.exports = router;
