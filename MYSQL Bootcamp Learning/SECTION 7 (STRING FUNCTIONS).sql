-- SECTION 7 (STRING FUNCTIONS)
CREATE DATABASE book_shop;
CREATE TABLE books 
	(
		book_id INT AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);
 
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

--          CONCAT (combinging data for cleaner output)

SELECT CONCAT(author_fname,' ',author_lname) as FULL_NAME
FROM books;
-- CONCAT (Another version)
SELECT concat_ws('**','hello','nice','day') AS NEWDAY;

SELECT 
    CONCAT_WS('-', title, author_fname, author_lname) 
FROM books;

--          SUBSTRING (REfining string data)
SELECT substring('Hello world',-6,3) as NEW;

--      COMBINING CONCAT AND STRING FUNCTIONS
SELECT concat
( SUBSTRING(title,1,10),'...') 
as NEW_title
FROM books;

SELECT 
    CONCAT(SUBSTR(author_fname, 1, 1),
            '^',
            SUBSTR(author_lname, 1, 1),
            '**') AS new
FROM
    books;
    
--              REPLACE ( To replace alphabets from a string)   **it is case sensitive
SELECT replace('HELLO WORLD','HELLO','BYE');

select replace(title,' ','-')
from books;

--            REVERSE (To reverse the whole string)
SELECT REVERSE('SHARIQ SHAHAB');
SELECT 
    CONCAT(title, '***', REVERSE(author_lname))
FROM
    books;

--             PRACTICE EXERCISE
-- QUESTION 1
SELECT UPPER(reverse('why does my cat look at me with such hatred')) AS NEW
;
-- QUESTION 2
SELECT REPLACE(title,' ','->') AS Title
FROM books;
-- QUESTION 3
SELECT 
    author_lname AS forward, REVERSE(author_lname) AS backwards
FROM
    books; 
-- QUESTION 4
SELECT 
    CONCAT(UPPER(author_fname),
            ' ',
            UPPER(author_lname)) AS Full_name_in_caps
FROM
    BOOKS;
-- QUESTION 5
SELECT 
    CONCAT(title, 'was released in', released_year) AS blurb
FROM
    BOOKS;
-- QUESTION 6
SELECT 
    title, CHAR_LENGTH(title) AS character_length
FROM
    books;
-- QUESTION 7
SELECT 
    CONCAT(SUBSTR(title, 1, 10), '...') AS short_title,
    CONCAT(author_lname, ',', author_fname) AS author,
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM
    books;