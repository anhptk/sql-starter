-- Select movies released in the last 5 years with the number of actors who have appeared in each movie

SELECT m.id, m.title, COUNT(DISTINCT c.actor_id) AS actors_count
FROM movies m
JOIN characters c ON m.id = c.movie_id
WHERE m.release_date >= CURRENT_DATE - INTERVAL '5 years'
GROUP BY m.id;
