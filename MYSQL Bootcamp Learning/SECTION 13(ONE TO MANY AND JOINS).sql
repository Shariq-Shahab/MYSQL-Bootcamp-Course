--               SECTION 13(ONE TO MANY AND JOINS)
--               FOREIGN KEY
CREATE TABLE customers (
id INT PRIMARY KEY auto_increment,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(50)
) ;

CREATE TABLE orders (
id INT PRIMARY KEY auto_increment,
order_date DATE,
amount INT,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);

--            CROSS AND INNER JOINS
SELECT id FROM customers WHERE last_name = 'George';
SELECT * FROM orders WHERE customer_id = 1;
-- ANOTHER WAY
SELECT * FROM orders 
WHERE customer_id = (SELECT id FROM customers WHERE last_name = 'George');

-- INNER JOINS 
SELECT first_name,last_name,order_date,amount FROM customers
JOIN orders on customers.id = orders.customer_id;
-- INNER JOINS WITH GROUP BY
SELECT first_name,last_name,SUM(amount) FROM customers
JOIN orders ON orders.customer_id = customers.id
GROUP BY first_name,last_name
ORDER BY Amount;

--            LEFT JOINS AND LEFT JOINS WITH GROUP BY
SELECT first_name, last_name, order_date, SUM(amount) FROM customers
LEFT JOIN orders ON orders.customer_id = customers.id;
-- WITH GROUP BY
SELECT first_name, last_name,IFNULL (SUM(amount), 0) AS Total FROM customers
LEFT JOIN orders ON orders.customer_id = customers.id
GROUP BY first_name,last_name
ORDER BY AMOUNT;

--            DELETE CASCADE 
CREATE TABLE customers (
id INT PRIMARY KEY auto_increment,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(50)
) ;

CREATE TABLE orders (
id INT PRIMARY KEY auto_increment,
order_date DATE,
amount INT,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE
);
DELETE FROM customers WHERE last_name= 'michael';

--               EXERCISE
-- QUESTION 1
CREATE TABLE students (
id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) );
CREATE TABLE papers (
title VARCHAR(50),
grade VARCHAR(10),
student_id INT,
FOREIGN KEY (student_id) references students(id) 
);
INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

SELECT first_name,title,grade from students
Join papers ON papers.student_id = students.id
ORDER BY grade DESC;

-- QUESTION 2
SELECT first_name,IFNULL(title,'missing') as title,IFNULL(grade,0) as grade from students
LEFT JOIN papers On students.id = papers.student_id;

-- QUESTION 3
SELECT first_name,IFNULL(AVG(grade),0) as Average from students
LEFT JOIN papers ON students.id = papers.student_id
group by first_name
order by average desc;

-- QUESTION 4
SELECT first_name,IFNULL(AVG(grade),0) as Average,
case WHEN grade >= 75 THEN 'Passed'
ELSE 'Failed' 
END AS passing_status
from students
Left join papers ON students.id = papers.student_id
group by first_name
ORDER BY Average DESC;
