-- Select detailed information about movies that meet the given criteria

SELECT
    m.id AS movie_id,
    m.title AS movie_title,
    m.release_date,
    m.duration,
    m.description,
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
    ) AS director

FROM movies m
-- Country id is 1
WHERE country_id = 1
    -- Release date is after 2022-01-01
    AND release_date >= '2022-01-01'
    -- Duration is greater than 2hr 15min
    AND duration > (2 * 60 + 15)

    -- Genre is Action or Drama
    AND EXISTS (
        SELECT 1
        FROM movies_genres mg
        JOIN genres g ON mg.genre_id = g.id
        WHERE mg.movie_id = m.id
        AND g.name IN ('Action', 'Drama')
    );