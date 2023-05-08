-- 			SECTION 8 (REFINING SELECTIONS)
INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
--         DISTINCT (To reduce the same results)
SELECT distinct author_fname 
from books;
--         DISTINCT WITH CONCAT
SELECT distinct CONCAT(author_fname,' ', author_lname) from books;

--        ANOTHER WAY OF DISTINCT(for multiple columns)
select distinct author_fname,author_lname,released_year from BOOKS;

-- 			ORDER BY ( for sorting results in order i.e ASC OR DESC)

SELECT author_fname
from books order by author_fname;

select book_id,author_fname,author_lname from books order by book_id;

--  		MORE ON ORDER BY
SELECT book_id,author_fname,author_lname,title,released_year from books
order by author_lname,released_year DESC;

SELECT concat(author_fname,' ',author_lname) AS author from books order by author;

--           LIMIT (to limit no of rows)
SELECT book_id,author_fname,author_lname,title,released_year from books limit 2,8;

-- 			LIKE (For searching data in rows)
SELECT book_id,title,author_fname,author_lname,pages FROM books 
WHERE author_fname LIKE 'n%'; 
--  (n%- starting on n,%n%- N anywhere in the coloumn,%n Ending on N)


--            EXERCISE QUESTIONS
-- QUESTION 1
SELECT title from books where title like '%stories%';

-- QUESTION 2
SELECT title,pages from books order by pages DESC limit 1; 

-- QUESTION 3
SELECT concat(title,' - ',released_year) AS summary from books 
order by released_year desc limit 3;

-- QUESTION 4
SELECT title,author_lname 
FROM books where author_lname like '% %';
 
-- QUESTION 5
SELECT title,released_year,stock_quantity
FROM books order by stock_quantity
limit 3; 

-- QUESTION 6
SELECT title,author_lname FROM books
order by author_lname,TITLE;

-- QUESTION 7
SELECT concat('MY FAVORITE AUTHOR IS',' ',upper(author_fname),' ',upper(author_lname),'!') AS Yell
FROM BOOKS order by author_lname;