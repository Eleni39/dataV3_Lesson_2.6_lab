-- Q1: 
SELECT last_name, count(*) FROM actor
GROUP BY last_name
HAVING COUNT(*) = 1;

-- Q2: Which actor names appear more than once

SELECT last_name, count(*) FROM actor
GROUP BY last_name;

-- Q3: How many rentals were processed by each employee. 
SELECT staff_id, count(*) FROM rental
GROUP BY staff_id;

-- Q4 : Using the film table, find out how many films were released each year.
SELECT release_year, count(*) FROM film
GROUP BY release_year;

-- Q5: Using the film table, find out for each rating how many films were there
SELECT rating, count(*) FROM film 
GROUP BY rating;

-- Q6: What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
SELECT rating, ROUND(AVG(length - rating)) AS average_length
FROM sakila.film
GROUP BY rating;

-- Q7: Which kind of movies (rating) have a mean duration of more than two hours?

SELECT rating, count(*) FROM film
GROUP BY rating
HAVING COUNT(*) > 180;

-- Q8: Rank films by length (filter out the rows that have nulls or 0s in length column).
-- In your output, only select the columns title, length, and the rank.

-- I don't fully understand how to rank them here..

