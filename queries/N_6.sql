-- Select detailed information about a movie with ID of 1

SELECT m.id AS movie_id, m.title AS movie_title, m.release_date, m.duration, m.description,
    (
        SELECT row_to_json(f)
        FROM (
            SELECT id, name, mime_type, key, url
            FROM files
            WHERE id = m.poster_id
        ) f
    ) AS poster,
    (
       SELECT row_to_json(p)
       FROM (
                SELECT id, first_name, last_name
                FROM people
                WHERE id = m.director_id
            ) p
    ) AS director,
    (
        SELECT json_agg(row_to_json(a))
        FROM (
            SELECT p.id, p.first_name, p.last_name
            FROM people p
            JOIN characters ch ON p.id = ch.actor_id
            WHERE ch.movie_id = m.id
        ) a
    ) AS actors,
    (
        SELECT json_agg(row_to_json(g))
        FROM (
            SELECT id, name
            FROM genres
            JOIN movies_genres mg ON genres.id = mg.genre_id
            WHERE mg.movie_id = m.id
        ) g
    ) AS genres
FROM movies m
WHERE m.id = 1;