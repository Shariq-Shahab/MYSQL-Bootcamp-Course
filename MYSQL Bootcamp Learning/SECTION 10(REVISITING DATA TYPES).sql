--       SECTION 10( REVISTING DATA)
--        DATE AND TIME
CREATE TABLE people (
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);
DESC people;
INSERT INTO people (name,birthdate,birthtime,birthdt)
values ('ALI','1996-12-03','12:03:29','1996-12-03 12:03:29');

INSERT INTO people (name,birthdate,birthtime,birthdt)
values ('Yong','1991-04-15','04:08:00','1991-04-15 04:08:00');

INSERT INTO people (name,birthdate,birthtime,birthdt)
values ('ahmed','1998-10-09','04:12:00','1998-10-09 04:12:00');

INSERT INTO people (name,birthdate,birthtime,birthdt)
values ('hazle',curdate(),curtime(),now());


      CURDATE,CURTIME,NOW,DAY,DAYOFWEEK,DAYOFYEAR,MONTHNAME,YEAR,DATEFORMAT
SELECT now();
SELECT curtime();
SELECT curdate();

SELECT 
    NAME,
    BIRTHDATE,
    DAY(birthdate),
    DAYOFWEEK(birthdate),
    DAYOFYEAR(birthdate),
    MONTHNAME(birthdate),
    YEAR(BIRTHDATE)
FROM
    people;

SELECT birthdt,date_format(birthdt, '%r')
from people;

--          TIMESTAMP ALONG WITH DATETIME
Create table life2
( name varchar(100),
created_at TIMESTAMP default current_timestamp,
updated_at timestamp on update current_timestamp );

Insert into life2 (name)
values ('SHARIQ');

UPDATE life2 set name='Shariq_Shahab';
SELECT * FROM LIFE2;

--           EXERCISE 
-- QUESTION 1
SELECT curtime();

-- QUESTION 2 
SELECT curdate();

-- QUESTION 3
SELECT dayofweek(curtime());

-- QUESTION 4
SELECT DATE_FORMAT(curtime(), '%W') as 'today is';

-- QUESTION 5
SELECT date_format(now(),'%c/%e/%Y') as 'new format';

-- QUESTION 6
SELECT date_format(now(),'%M %D at %H:%i') as 'NEW';

-- QUESTION 7
CREATE TABLE tweet (
content VARCHAR(180),
username VARCHAR(20),
time_created DATETIME default current_timestamp,
updated_at DATETIME on update current_timestamp
);
INSERT into tweet(content,username) 
Values ('i am living a good life','shsh8715');
update tweet set content = 'Life is good' , username = 'shsh8112';
select * from tweet;