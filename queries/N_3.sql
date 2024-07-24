-- Retrieve a list of all users along with their favorite movies as array of identifiers

SELECT u.id, u.username, ARRAY_AGG(fm.movie_id) AS favorite_movies
FROM users u
JOIN favorite_movies fm ON u.id = fm.user_id
GROUP BY u.id;
