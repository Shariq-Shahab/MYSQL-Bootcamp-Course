--            SECTION 9 (AGGREGATE FUNCTIONS)
--          COUNT (To count the no of rows)
SELECT COUNT(*) 
from books ;
SELECT COUNT(author_fname) fROM BOOKS;
SELECT COUNT(distinct author_fname) fROM BOOKS;

SELECT title from books WHERE TITLE like '%the%';

--           GROUP BY (summarizes identical data into rows)
SELECT author_lname,count(*) From books 
group by author_lname;

SELECT released_year ,count(*) FROM books
group by released_year;

--        GROUP BY FOR MULTIPLE COLUMNS
SELECT author_fname,author_lname,count(*) as New
From Books group by author_fname,author_lname;

SELECT concat(author_fname,' ',author_lname) as author, count(*) as new
FROM books group by author;

--          MAX and Min
Select min(pages) from books;
select max(pages) from books;

SELECT author_fname,author_lname,max(released_year)
FROM books group by author_fname,author_lname;

--         SUBQUERIES( to run another query into one query)
SELECT author_fname,author_lname,pages FROM books
Where pages = (SELECT max(pages) FROM BOOKS);

--          SUM( TO SUM UP ALL) AND AVG ( AVERAGE)
SELECT sum(pages) from books;

SELECT author_fname,sum(pages) from books
group by author_fname;

SELECT AVG(PAGES) FROM books;

SELECT released_year,count(*),avg(stock_quantity) as Average FROM BOOKS
group by released_year;

--             EXERCISE 
--  QUESTION 1
SELECT COUNT(*) FROM BOOKS;

-- QUESTION 2
SELECT released_year,count(*) From books
group by released_year;

-- QUESTION 3
SELECT SUM(stock_quantity) 
From books;

-- QUESTION 4
SELECT author_fname,author_lname, AVG(released_year) as AVERAGE From books
group by author_fname,author_lname;

-- QUESTION 5
SELECT concat(author_fname,' ',author_lname) as FULL_NAME,MAX(pages) as no_of_pages
From books;
-- OR 
SELECT concat(author_fname,' ',author_lname) as FULL_NAME,pages
From books where pages = (SELECT MAX(PAGES) from books);

-- QUESTION 6
SELECT released_year as year,
count(*) as books,
avg(pages) as avg_pages
FROM books group by released_year
ORDER BY released_year;