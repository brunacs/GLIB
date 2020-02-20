-- USING THE DATABASE
USE GLIB;

-- DROPPING A TABLE, IF EXISTS
-- DROP TABLE IF EXISTS Users;

-- DROPPING A TABLE, IF EXISTS
-- DROP TABLE IF EXISTS Programs;

-- DROPPING A TABLE, IF EXISTS
-- DROP TABLE IF EXISTS Classes;

-- DROPPING A TABLE, IF EXISTS
-- DROP TABLE IF EXISTS ClassMates;

-- CREATING A TABLE
CREATE TABLE Users (
  UserId int NOT NULL AUTO_INCREMENT,
  FullName varchar(100) NOT NULL, 
  Email varchar(100) NOT NULL,
  Phone varchar(100) NOT NULL,
  Address varchar(100),
  Stat varchar(100) Not Null,
  Age int,
  CONSTRAINT UserId_PK PRIMARY KEY (UserId)
);

CREATE TABLE Programs (
  ProgramId int NOT NULL AUTO_INCREMENT,
  ProgramClassMatesName varchar(100) NOT NULL, 
  Duration  varchar(100) NOT NULL,
  CONSTRAINT ProgramId_PK PRIMARY KEY (ProgramId)
);

CREATE TABLE Classes (
  ClassId int NOT NULL AUTO_INCREMENT,
  ProgramId int, 
  Teacher int,
  DateStart date,
  DateEnd date,
  ClassStat varchar(100) Not Null,
  Rooms varchar(100),
  Spaces int,
  CONSTRAINT ClassId_PK PRIMARY KEY (ClassId)
);

CREATE TABLE ClassMates (
  ClassId int NOT NULL,
  Students int Not Null,
  ProgramId int, 
  ttend int,
  StudentStat varchar(100) Not Null,
  CONSTRAINT ClassMates_PK PRIMARY KEY (ClassId,Students)
);
