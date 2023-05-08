--           SECTION 11(COMPARISON AND LOGICAL OPERATORS)
--           NOT EQUAL
SELECT  title,released_year FROM books 
WHERE released_year != 2017;

--          NOT LIKE
SELECT title FROM books
WHERE title NOT LIKE 'THE%';

--         GREATER THAN,LESS THAN , EQUAL TO 
SELECT * FROM books
WHERE released_year > 2000;

SELECT * FROM books
WHERE released_year < 2000;

SELECT * FROM books
WHERE released_year <= 1985;

--          LOGICAL AND & LOGICAL OR & BETWEEN/NOT BETWEEN
SELECT * FROM books
WHERE author_lname='Eggers' AND 
released_year > 2010 AND
title LIKE '%novel%';

SELECT title, author_lname, released_year FROM books
WHERE author_lname='Eggers' OR
released_year > 2010;

SELECT title,pages FROM books
Where pages between 200 and 500;

SELECT title,pages FROM books
Where pages not between 200 and 500;

--        IN / NOT IN ( Used as AND ,OR  BUT MORE QUICKER AND SHORTER)
SELECT title,author_lname FROM BOOKS
WHERE author_lname IN ('lahiri','smith','gaiman');

SELECT title,author_lname FROM BOOKS
WHERE author_lname NOT IN ('lahiri','smith','gaiman');

SELECT title, released_year FROM books
WHERE released_year >= 2000 
AND released_year % 2 = 0; -- % ( this is remainder sign and can be used to find out even or odd nos %2=1 for off and %2=0 for even)

--          CASE STATEMENT(to use multiple operators and functions as one statement)

SELECT title,author_lname,pages,
CASE 
WHEN pages < 300 THEN 'Small book'
WHEN pages BETWEEN 300 and 500 THEN 'Medium book' 
ELSE 'Long book'
END as 'Book Size'
FROM BOOKS;

--          EXERCISE QUESTIONS
-- QUESTION 1
SELECT * FROM BOOKS
WHERE released_year < 1980;

-- QUESTION 2
SELECT * FROM BOOKS
WHERE author_lname = 'eggers'
OR author_lname = 'chabon';

-- QUESTION 3
SELECT * FROM BOOKS
WHERE author_lname = 'lahiri'
AND released_year > 2000;

-- QUESTION 4
SELECT * FROM BOOKS
WHERE PAGES BETWEEN 100 AND 200;

-- QUESTION 5 
SELECT * FROM BOOKS
WHERE author_lname LIKE 'C%'
OR author_lname LIKE 'S%';

-- QUESTION 6
SELECT title,author_lname,
CASE
WHEN Title like '%stories%' THEN 'Short Stories'
WHEN Title like 'Just kids' THEN 'Memoir'
WHEN Title like 'A heartbreaking work of staggering genius' THEN 'Memoir'
ELSE 'Novel' 
END AS Type
From books;

-- QUESTION 7(BONUS QUESTION)
SELECT author_fname,author_lname,count(*) 
FROM BOOKS
group by author_fname,author_lname ;
--             OR 
SELECT author_fname, author_lname,
	CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
	END AS count
FROM books
WHERE author_lname IS NOT NULL
GROUP BY author_fname, author_lname;