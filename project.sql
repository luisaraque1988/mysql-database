CREATE DATABASE project;
USE project;

-- First I am going to create some tables --

CREATE TABLE factures(
letter CHAR,
numbers INTEGER,
clientID INTEGER,
articleID INTEGER,
dates DATE,
total DOUBLE,
PRIMARY KEY(letter, numbers)
);

CREATE TABLE articles(
articleID INTEGER PRIMARY KEY,
article VARCHAR(50),
price DOUBLE,
stock INTEGER
);

CREATE TABLE clients(
clientID INTEGER PRIMARY KEY,
firstname VARCHAR(25),
lastname VARCHAR(25),
CUIT CHAR(16), -- this is the tax identification number in Argentina --
address VARCHAR(50),
comments VARCHAR(50)
);


