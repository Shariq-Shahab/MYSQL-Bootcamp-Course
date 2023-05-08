--              SECTION 11(CONSTRAINTS AND ALTER TABLE)
--             UNIQUE FUNCTION ( To make values of row uniques )
CREATE Table contacts
( name varchar(100) NOT NULL,
AGE INT NOT NULL UNIQUE );

INSERT INTO contacts(name,age)
VALUES('Ahmed',20);
SELECT * FROM contacts;
INSERT INTO contacts(name,age)
VALUES('Ali',21);

--          CHECK FUNCTION ( To add condition ) CONSTRAINT (To name that )
CREATE TABLE users
( username VARCHAR(100),
age INT CHECK (age > 0),
city VARCHAR(100) CHECK (city like '%k%')
);
INSERT INTO users (username,age,city)
VALUES ('Shariq',26,'karachi');
SELECT * FROM users2;

--            CONSTRAINT AND CONSTRAINT MULTIPLE COLUMNS WITH UNIQUE AND CHECK
-- CONSTRAINT

CREATE TABLE users2
( username VARCHAR(100),
age INT,
CONSTRAINT Age_not_valid CHECK (age > 0),
city VARCHAR(100) CHECK (city like '%k%')
);
INSERT INTO users2 (username,age,city)
VALUES ('Shariq',-1,'karachi');

-- MULTIPLE CONSTRAINT WITH UNIQUE

CREATE TABLE users3
( username VARCHAR(100),
Address VARCHAR(100),
CONSTRAINT name_address UNIQUE (username, address)
);
INSERT INTO users3 (username,address)
VALUES ('Bobby','karachi'),('Addy','karachi');

-- MULTIPLE CONSTRAINT WITH CHECK 
CREATE TABLE people 
( Sale_price INT NOT NULL,
purchase_price INT NOT NULL,
CONSTRAINT ratio CHECK (sale_price >= purchase_price)
);
INSERT INTO people (sale_price,purchase_price)
VALUES (500,450);
INSERT INTO people (sale_price,purchase_price)
VALUES (400,450); -- THIS CONDITION IS NOT TRUE

--            ALTERING TABLE: ADDING AND DROPPING COLUMN
ALTER TABLE contacts
ADD COLUMN address VARCHAR(50);
ALTER TABLE contacts
ADD COLUMN Phone INT NOT NULL;

ALTER TABLE contacts
DROP COLUMN address;

--             RENAMING COLUMNS AND TABLE
ALTER TABLE contacts
RENAME COLUMN name to new_name;

ALTER TABLE contacts
RENAME To Contacts1;

--             MODIFYING COLUMNS TYPE
ALTER TABLE contacts1
Modify new_name VARCHAR(200);

--            AADING AND DROPPING CONSTRAINTS
ALTER TABLE contacts1
ADD CONSTRAINT new_age CHECK (age >= 0);

ALTER TABLE contacts1
DROP CONSTRAINT new_age;

