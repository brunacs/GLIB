create database GLIB;

use GLIB;

CREATE TABLE `STUDENT` (
  `idStudent` int(11) NOT NULL AUTO_INCREMENT,
  `nameStudent` varchar(50) NOT NULL,
  `emailStudent` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idStudent`)
);

-- select * from student;

-- insert into Student values (null, 'Jess Pikman', 'jess.pikman@gmail.com');