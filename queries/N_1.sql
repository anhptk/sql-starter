-- Select a list of actors along with the total budget of the movies they have appeared in

SELECT p.id, p.first_name, p.last_name, SUM(m.budget) AS total_budget
FROM people p
JOIN characters c ON p.id = c.actor_id
JOIN movies m ON c.movie_id = m.id
GROUP BY p.id;
