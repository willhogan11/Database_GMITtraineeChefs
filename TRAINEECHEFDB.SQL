CREATE DATABASE TRAINEECHEFDB;
USE TRAINEECHEFDB;


-- Create Chef table
CREATE TABLE CHEF
(
	CHEF_ID INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	F_NAME VARCHAR(20) NOT NULL, 
	SURNAME VARCHAR(50) NOT NULL
);

-- Create the Food type table that will contain part of each meal structure, ie Starter
CREATE TABLE FOOD_TYPE
(
	FOOD_TYPE_ID INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	TYPE_NAME VARCHAR(35) NOT NULL
);

-- Create the FOOD_ORIGIN table, that contains the recipes origin
CREATE TABLE FOOD_ORIGIN
(
	FOOD_ORIGIN_ID INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	ORIGIN VARCHAR(50) NOT NULL
);

-- Create the recipe table
CREATE TABLE RECIPE
(
	RECIPE_ID INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	NAME VARCHAR(30) NOT NULL, 
	DESCRIPTION VARCHAR(255) NOT NULL, 
	PREP_TIME INT NOT NULL, 
	DIRECTIONS MEDIUMTEXT NOT NULL, 
	IMAGE LONGBLOB, 
	INGREDIENTS VARCHAR(255) NOT NULL, 
	CHEF_ID INT UNSIGNED NOT NULL,
	FOOD_TYPE_ID INT UNSIGNED NOT NULL,
	FOOD_ORIGIN_ID INT UNSIGNED NOT NULL, 
	FOREIGN KEY (CHEF_ID) REFERENCES CHEF(CHEF_ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE, 
	FOREIGN KEY (FOOD_TYPE_ID) REFERENCES FOOD_TYPE(FOOD_TYPE_ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE, 
	FOREIGN KEY (FOOD_ORIGIN_ID) REFERENCES FOOD_ORIGIN(FOOD_ORIGIN_ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

-- Create the ingredients table
CREATE TABLE INGREDIENTS
(
	INGRED_ID INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	NAME VARCHAR(50) NOT NULL, 
	RECIPE_ID INT UNSIGNED NOT NULL, 
	FOREIGN KEY(RECIPE_ID) REFERENCES RECIPE(RECIPE_ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);







INSERT INTO FOOD_ORIGIN
(ORIGIN)
VALUES
("Mixed"),("Global"),("Eastern European"),("Western European"),("Scandinavian"),
("North African"),("South African"),("Central African"),("Middle Eastern"),("Asian"),
("Italian"),("Chinese"),("Cantonese"),("Japanese"),("Greek"),("Indonesian"),("Thai"),("English"), ("Dutch")
("French"),("German"),("Spanish"),("Portuguese"),("Mexican"),("Polish"),("Russian"),("Brazilian"),("Indian"),
("Central American"),("South American"),("Irish"),("Scottish"),("Welsh"),("Morrocan"),("Turkish"); 


INSERT INTO FOOD_TYPE
(TYPE_NAME)
VALUES
("General"),("Starter"),("Main"),("Salad"),("Dessert");


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





