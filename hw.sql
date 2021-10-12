-- Week 5 - Monday Questions 

-- 1. How many actors are there with the last name ‘Wahlberg’? 
SELECT COUNT(actor)
FROM actor
Where last_name = 'Wahlberg';
-- Answer: 2

-- 2. How many payments were made between $3.99 and $5.99? 
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Answer: 5607

-- 3. What film does the store have the most of? (search in inventory) 
SELECT film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- Answer: 

-- 4. How many customers have the last name ‘William’? 
SELECT COUNT(customer)
FROM customer
WHERE last_name = 'William';

-- Answer: 0 

-- 5. What store employee (get the id) sold the most rentals? 
SELECT staff_id 
FROM payment
GROUP BY staff_id
ORDER BY COUNT(staff_id);

-- Answer: Employee # 1

-- 6. How many different district names are there? 
SELECT COUNT(district)
FROM address;

-- Answer: 603

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT MAX(actor_id)
FROM film_actor;

--Answer: Film 200

-- 8. From store_id 1, how many customers have a last name ending 
-- with ‘es’? (use customer table) 
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es';

-- Answer: 21

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals
-- above 250 for customers  with ids between 380 and 430? (use group by 
-- and having > 250) 
SELECT COUNT(amount)
FROM payment
GROUP BY customer_id BETWEEN 380 AND 430
HAVING COUNT(customer_id) > 250;

-- Answer: 13339 & 1257

-- 10. Within the film table, how many rating categories are there?
-- And what rating has the most  movies total?
SELECT *
FROM film

