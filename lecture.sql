-- select all records from a table called actor
SELECT *
FROM actor;

-- select the first and last names od every actor/actress in the actor table
SELECT first_name, last_name
FROM actor;

-- Query the farst and last name column whare the first name equals 'Nick'...using the WHERE clause
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

-- Query the farst and last name column whare the first name equals 'Nick'...using the LIKE clause
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

-- Query for all first name data that begins with the letter J using LIKE/WHERE and wildcard operator
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J%';

-- query name data for actors with 3-letter names beginning with 'K'
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__';

-- query for name data fro actors starting with 'K' and ending with 'TH'
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K%th';

--COmparison Operators for numerical vlaues
-- greater than(>) --less than(<)
-- greater or equal (>=) -- less or equal (<=)
-- not equal (<>)

-- Exploratory query into a new table
SELECT *
FROM payment;

--Query for data that shows customers who paid an amount greater than $2
SELECT customer_id, amount
FROM payment
WHERE amount > 2;

--Query for data that shows customers who paid an amount less than $7.99
SELECT customer_id, amount
FROM payment
WHERE amount < 7.99;

----Query for data that shows customers who paid an amount less than or equal $7.99
SELECT customer_id, amount
FROM payment
WHERE amount <= 7.99;

--can use ORDER BY clause to sort output by numerical value ASC/DESC
SELECT customer_id, amount
FROM payment
WHERE amount > 2
ORDER BY amount DESC;

-- using the BETWEEN clause to find amounts between 3 and 7
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 2.00 and 7.00
ORDER BY amount DESC;

--Find all payments that are not equal to 0.00
SELECT customer_id, amount
FROM payment
WHERE amount <> 0
ORDER BY amount;

--SQL aggregators => SUM(), AVG(), COUNT(), MIN(), MAX()

-- sum of every amount paid greater than 5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

--find the average payment amount above 5.99
SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

--find the total num of payments amount above 5.99
SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

--find all unique payments above 5.99
SELECT DISTINCT(amount)
FROM payment
WHERE amount > 5.99;

SELECT COUNT(DISTINCT(amount))
FROM payment
WHERE amount > 5.99;

-- query to display the minimum payment amount over 7.99
-- Also using aliases to rename aggregated column output
SELECT MIN(amount) as min_payment
FROm Payment
WHERE amount > 7.99;


-- query to display different amounts grouped together
-- and the count of each amount
SELECT amount, COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY amount;

--

SELECT *
FROM payment;

--query to display customer_id and total amount of money spent
SELECT customer_id, AVG(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

-- query to display customer_ids that show up more than 30 times
SELECT customer_id, COUNT(customer_id)
FROM payment
GROUP BY customer_id;
--HAVING customer_id;

-- random query prompt....
SELECT *
FROM film;

--  write a query to display the total count of films that start with the letter A
--SELECT COUNT(title)
--FROM film
--WHERE title  LIKE 'A%';








