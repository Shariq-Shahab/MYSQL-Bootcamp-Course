-- SECTION 3 ( Creating database and tables )
-- Show all the databases
show databases;

-- To create a new database 
CREATE DATABASE abcd ;

-- TO delete a database 
DROP DATABASE abcd;

-- To use desired database
USE abc ;

-- To check which database you are in
SELECT database();

-- To create a table in the database
CREATE TABLE cats 
  ( 
     name VARCHAR(100),
     age  INT 
  ); 

-- To check the no of tables in the given database
SHOW TABLES; -- Or 
DESC cats ;

-- To delete a table 
DROP TABLE cats;
