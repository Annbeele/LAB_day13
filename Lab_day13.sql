#Instructions

#1. In the actor table, which are the actors whose last names are not repeated? For example if you would sort the data
#in the table actor by last_name, you would see that there is Christian Arkoyd, Kirsten Arkoyd, and Debbie Arkoyd.
#These three actors have the same last name. So we do not want to include this last name in our output. Last name "Astaire"
#is present only one time with actor "Angelina Astaire", hence we would want this in our output list.

SELECT  last_name
FROM actor
GROUP BY last_name
having count(last_name) = 1;

#2. Which last names appear more than once? We would use the same logic as in the
#previous question but this time we want to include the last names of the actors
#where the last name was present more than once.

SELECT  last_name
FROM actor
GROUP BY last_name
HAVING count(last_name) > 1;

#3. Using the rental table, find out how many rentals were processed by each employee.
#todo lo q esté en select, q no esté en group by, tiene q estar agregado
SELECT * from rental;

SELECT staff_id, count(staff_id)
FROM rental
GROUP BY staff_id;

#4. Using the film table, find out how many films were released each year
SELECT * from film;

SELECT release_year, count(release_year)
FROM film
GROUP BY release_year;

#5. Using the film table, find out for each rating how many films were there.
SELECT * from film;

SELECT rating, count(rating)
FROM film
GROUP BY rating;

#6. What is the average length of films for each rating? Round off the average
# lengths to two decimal places.

SELECT rating, round(avg(length), 2) as avg_length
FROM film
GROUP BY rating;

#7. Which kind of movies (based on rating) have an average duration of two hours
# or more?

SELECT rating, round(avg(length), 2) as avg_length
FROM film
GROUP BY rating
HAVING avg_length >= 120.00;
