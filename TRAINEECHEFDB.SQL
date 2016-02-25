CREATE DATABASE TRAINEECHEFDB;
USE TRAINEECHEFDB;

CREATE TABLE FOOD_ORIGIN
(
	ID INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	ORIGIN VARCHAR(50) NOT NULL
);


CREATE TABLE FOOD_TYPE
(
	ID INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	TYPE_NAME VARCHAR(35) NOT NULL
);



CREATE TABLE CHEF
(
	ID INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	F_NAME VARCHAR(20) NOT NULL, 
	SURNAME VARCHAR(50) NOT NULL, 
	CURRENT_YEAR INT UNSIGNED NOT NULL 
);


CREATE TABLE RECIPE
(
	ID INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	NAME VARCHAR(30) NOT NULL, 
	DESCRIPTION VARCHAR(255) NOT NULL, 
	PREP_TIME INT NOT NULL, 
	DIRECTIONS MEDIUMTEXT NOT NULL, 
	IMAGE LONGBLOB, 
	-- INGREDIENTS VARCHAR(255) NOT NULL  // Need to figure out the best way of doing this
);


CREATE TABLE INGREDIENTS
(
	ID INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	NAME VARCHAR(50) NOT NULL
);


INSERT INTO FOOD_ORIGIN
(ORIGIN)
VALUES
("Mix")("Italian"),("Chinese"),("Cantonese"),("Japanese"),("Greek"),("Congolese"),("French"),("German"),("Spanish"),("Mexican"),("Polish"),("Russian"),("Brazilian"),("Irish"),("Scotish"),("Welsh"),("Morrocan"),("Turkish"),("Zimbabwean");


INSERT INTO FOOD_TYPE
(TYPE_NAME)
VALUES
("General"), ("Starter"), ("Main"), ("Dessert");


INSERT INTO CHEF
(F_NAME, SURNAME, CURRENT_YEAR)
VALUES
("Will", "Hogan", 3),
("Mike", "Kelly", 1),
("John", "Rabbitte", 2),
("Gerry", "Mahony", 4),
("Michelle", "Doherty", 3);


INSERT INTO INGREDIENTS
(NAME)
VALUES
("Salt"),("Sugar"),("Black Pepper"), ("Butter"), ("White Pepper"),("5 Spice"),("Eggs"),("Milk"),("Yeast"),("Flour"),("Baking Soda"),("Cheese"),("Tomatoes"); 


INSERT INTO RECIPE
(NAME, DESCRIPTION, PREP_TIME, DIRECTIONS, IMAGE)
VALUES
("Spanish Omellette", 25, "Beat eggs together with ingredients, blah, blah, blah.........", "C:/Users/william/Desktop");





