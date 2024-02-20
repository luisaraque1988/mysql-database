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

-- Now I am going to practice modifying the tables -- 

ALTER TABLE factures 
	CHANGE clientID IDclient INT,
	CHANGE articleID IDarticle INT,
	MODIFY total DOUBLE UNSIGNED;

ALTER TABLE articles
	CHANGE articleID IDarticle INT,
	MODIFY article VARCHAR(75),
	MODIFY price DOUBLE UNSIGNED NOT NULL;
    
ALTER TABLE clients
	CHANGE clientID IDclient INT,
    MODIFY firstname VARCHAR(30) NOT NULL,
    MODIFY lastname VARCHAR(35) NOT NULL,
    CHANGE comments observations VARCHAR(250);
    

ALTER TABLE factures
	ADD CONSTRAINT fk_article FOREIGN KEY(IDarticle) REFERENCES articles(IDarticle),
    ADD CONSTRAINT fk_client FOREIGN KEY(IDclient) REFERENCES clients(IDclient);

-- After modifying the tables I am going to add some data --

INSERT INTO factures (letter, numbers, IDclient, IDarticle, dates, total) 
VALUES	('A', 28, 14, 335, "2021-03-18", 1589.50),
		('A', 39, 26, 157, "2021-04-12", 979.75),
		('B', 8, 17, 95, "2021-04-25", 513.35),
        ('B', 12, 5, 411, "2021-05-03", 2385.70),
        ('B', 19, 50, 157, "2021-05-26", 979.75);

DESC clients; 

INSERT INTO articles (IDarticle, article, price, stock)
VALUES	(95, "Webcam con Micrófono Plug & Play", 513.35, 39),
		(157, "Apple AirPods Pro", 979.75, 152),
        (335, "Lavasecarropas Automático Samsung", 1589.50, 12),
        (411, "Gloria Trevi/Gloria/CD+DVD",2385.70,2);
        
INSERT INTO clients (IDclient, firstname, lastname, CUIT, address, observations)
VALUES	(5, "Santiago", "González", 23-24582359-9, "Uriburu 558 - 7ºA", "VIP"),
		(14, "Gloria", "Fernández", 23-35965852, "Constitución 323", "GBA"),
        (17, "Gonzalo", "López", 23-33587416-0, "Arias 2624", "GBA"),
        (26, "Carlos", "García", 23-42321230-9, "PAsteur 332 - 2ºC", "VIP"),
        (50, "Micaela", "Altieri", 23-22885566-5, "Santamarina 1255", "GBA");







