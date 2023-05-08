--                     SECTION 5 (CRUD)
CREATE TABLE cats
  ( 
     cat_id INT AUTO_INCREMENT, 
     name   VARCHAR(100), 
     breed  VARCHAR(100), 
     age    INT, 
     PRIMARY KEY (cat_id) 
  ); 
   INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
 select * from cats;
--             TO ENABLE SAFE CHANGES ( FOR UPDATING AND DELETE )
--  SET SQL_SAFE_UPDATES = 0;
UPDATE cats SET breed='Shorthair' 
WHERE breed='Tabby';
UPDATE cats SET age=14 WHERE name='Misty';

--          EXERCISE (POINT 69)
UPDATE cats SET name='jack' WHERE name='jackson';
update cats set breed='british shorthair' where name='ringo';
UPDATE cats SET age=12 WHERE breed='maine coon';
--     TO DELETE THE TABLES


