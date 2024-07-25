-- Select directors along with the average budget of the movies they have directed
SELECT p.id AS director_id, CONCAT(p.first_name, ' ', p.last_name) AS director_name, AVG(m.budget) AS avg_budget
FROM people p
JOIN movies m ON p.id = m.director_id
GROUP BY p.id;