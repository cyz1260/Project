CREATE DATABASE book_platform;

USE book_platform;

-- DROP TABLE usersinfo;

CREATE TABLE UsersInfo(
userid INT PRIMARY KEY auto_increment,
userpassword VARCHAR(100) NOT NULL,
username VARCHAR(100) NOT NULL,
gender VARCHAR(20) NOT NULL,
telnumber VARCHAR(50) NOT NULL,
userstate VARCHAR(50) NOT NULL
);

SELECT * FROM usersinfo;

CREATE TABLE AdminInfo(
adminid INT PRIMARY KEY auto_increment,
adminpassword VARCHAR(100) NOT NULL
);

INSERT INTO admininfo(adminid,adminpassword) VALUES("201720","123456");

SELECT * FROM admininfo;

-- DROP TABLE bookcategory;

CREATE TABLE BookCategory(
categoryid INT PRIMARY KEY auto_increment,
categoryname VARCHAR(50) NOT NULL
);

SELECT * FROM bookcategory;

-- DROP TABLE sbooklist;

CREATE TABLE SBookList(
sbookid INT PRIMARY KEY auto_increment,
suserid INT NOT NULL,
sbookname VARCHAR(50) NOT NULL,
sbookprice VARCHAR(50) NOT NULL,
sbookcategory VARCHAR(50) NOT NULL,
sbookdescription VARCHAR(300) NOT NULL,
sbookimga VARCHAR(200) NOT NULL,
sbookimgb VARCHAR(200),
sbookstate VARCHAR(20) NOT NULL
);

SELECT * FROM sbooklist;

-- DROP TABLE orders;

CREATE TABLE Orders(
orderid INT PRIMARY KEY auto_increment,
ouserid INT NOT NULL,
ousername VARCHAR(50) NOT NULL,
ousertel VARCHAR(30) NOT NULL,
ouseraddress VARCHAR(200) NOT NULL,
obookname VARCHAR(50) NOT NULL,
obookprice VARCHAR(50) NOT NULL,
obookdescription VARCHAR(300) NOT NULL,
obookimga VARCHAR(100) NOT NULL
);

SELECT * FROM orders;

-- DROP TABLE useraddress;

CREATE TABLE UserAddress(
auseraddressid INT PRIMARY KEY auto_increment,
auserid INT NOT NULL,
ausername VARCHAR(50) NOT NULL,
ausertel VARCHAR(30) NOT NULL,
address VARCHAR(200) NOT NULL
);

SELECT * FROM useraddress;
