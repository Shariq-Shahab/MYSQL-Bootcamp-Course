--  SECTION 4 (INSERTING DATA)
INSERT VALUE IN GIVEN TABLE
 INSERT INTO dogs(name, age) 
 VALUES ('Jetson', 7);

   -- FOR MULTIPLE INSERTS
 Insert INTO dogs(name, age) 
 VALUES ('Charlie', 10)
       ,('Sadie', 3)
       ,('Lazy Bear', 1) ;
 Select *
 from dogs
--                   EXCERCISE : CREATE A PEOPLE TABLE 

 Create table people
 ( first_name VARCHAR(20),
 last_name VARCHAR(20),
 age INT ) ;
 INSERT INTO people(first_name,last_name,age)
 VALUES ('tina','belcher',13),('bob','belcher',42),('linda','belcher',45),('phillip','frond',35),('calvin','fishchoeder',70) ;

 SELECT *
 FROM people

--                    To show the warnings
SHOW WARNINGS;

CREATE TABLE cats1
( id INT NOT NULL PRIMARY KEY ,
name VARCHAR(50) ,
age INT );
INSERT INTO cats1(id,name,age)
VALUES (1,'andy',4) ;
INSERT INTO cats1(id,name,age)
VALUES ('andy',4)

--                     FOR AUTO INCREMENT
CREATE TABLE cats2
( cat_id INT auto_increment,
Name VARCHAR(50) ,
Age int ,
PRIMARY KEY (cat_id)
);
INSERT INTO cats2(name,age) 
VALUES ('adi',6) ;
SELECT * FROM cats2
INSERT INTO cats2(name,age) 
VALUES ('adi',6) ;
                         
                         -- EXERCISE QUESTION

CREATE TABLE employees
( 	id INT auto_increment PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	middle_name VARCHAR(50),
	age INT NOT NULL,
	current_status VARCHAR(50) NOT NULL default 'Employed'
);
DESC employees;
INSERT INTO employees(first_name,last_name,middle_name,age,current_status) 
VALUES ('shariq','shahab','abc',26,'not employed');
Select * from employees;
INSERT INTO employees(first_name,last_name,age) 
VALUES ('shariq','shahab',26);