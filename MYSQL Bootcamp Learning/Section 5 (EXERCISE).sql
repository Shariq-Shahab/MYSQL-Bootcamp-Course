--  SECTION 5(CRUD TEST)
-- CREATE DATABASE shirts_db; 
create table shirts
( shirt_id INT auto_increment PRIMARY KEY,
article VARCHAR(50),
color VARCHAR(50),
shirt_size varchar(5),
last_worn int 
); 
INSERT INTO shirts(article,color,shirt_size,last_worn)
VALUES 
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

-- TASK 1
INSERT INTO shirts(article,color,shirt_size,last_worn)
VALUES ('polo shirt','purple','M',50);
-- TASK 2
SELECT article,color from shirts;
-- TASK 3
SELECT article,color,shirt_size,last_worn 
FROM shirts 
WHERE shirt_size='M';
-- TASK 4
UPDATE shirts set shirt_size ='L'
WHERE article='polo shirt';
-- TASK 5
UPDATE shirts SET last_worn=0
WHERE last_worn=15;
-- TASK 6
UPDATE shirts SET shirt_size='XS',color='off white'
WHERE color='white';
-- TASK 7
DELETE FROM shirts 
WHERE last_worn=200;
-- TASK 8
DELETE FROM shirts 
WHERE article='tank tops';
-- TASK 9
DELETE FROM shirts;

