-- Create mock data for the database

-- Create some new files
INSERT INTO files (name, mime_type, key, url)
VALUES
    ('avatar1.jpg', 'image/jpeg', 'avatar1.jpg', 'https://example.com/avatar1.jpg'),
    ('avatar2.jpg', 'image/jpeg', 'avatar2.jpg', 'https://example.com/avatar2.jpg'),
    ('avatar3.jpg', 'image/jpeg', 'avatar3.jpg', 'https://example.com/avatar3.jpg'),
    ('avatar4.jpg', 'image/jpeg', 'avatar4.jpg', 'https://example.com/avatar4.jpg'),
    ('avatar5.jpg', 'image/jpeg', 'avatar5.jpg', 'https://example.com/avatar5.jpg'),
    ('avatar6.jpg', 'image/jpeg', 'avatar6.jpg', 'https://example.com/avatar6.jpg'),
    ('avatar7.jpg', 'image/jpeg', 'avatar7.jpg', 'https://example.com/avatar7.jpg'),
    ('avatar8.jpg', 'image/jpeg', 'avatar8.jpg', 'https://example.com/avatar8.jpg'),
    ('avatar9.jpg', 'image/jpeg', 'avatar9.jpg', 'https://example.com/avatar9.jpg'),
    ('avatar10.jpg', 'image/jpeg', 'avatar10.jpg', 'https://example.com/avatar10.jpg');

-- Create some new countries
INSERT INTO countries (name)
VALUES
    ('United States'),
    ('United Kingdom'),
    ('Canada'),
    ('Australia'),
    ('Germany'),
    ('France'),
    ('Italy'),
    ('Spain'),
    ('Japan'),
    ('China');

-- Create some new genres
INSERT INTO genres (name)
VALUES
    ('Action'),
    ('Adventure'),
    ('Comedy'),
    ('Crime'),
    ('Drama'),
    ('Fantasy'),
    ('Historical'),
    ('Horror'),
    ('Mystery'),
    ('Science Fiction');

-- Create some new people
INSERT INTO people (first_name, last_name, birth_date, biography, gender, avatar_id)
VALUES
    ('John', 'Doe', '1980-01-01', 'John Doe is an actor from the United States.', 'male', 1),
    ('Jane', 'Smith', '1985-02-02', 'Jane Smith is an actress from the United Kingdom.', 'female', 2),
    ('Michael', 'Johnson', '1990-03-03', 'Michael Johnson is an actor.', 'other', 3),
    ('Emily', 'Brown', '1995-04-04', 'Emily Brown is an actress.', 'female', 4),
    ('William', 'Jones', '2000-05-05', 'William Jones is an actor, director, and producer.', 'male', 5),
    ('Olivia', 'Garcia', '2005-06-06', 'Olivia Garcia is an actress and singer.', 'other', 6);

-- Create some person photos
INSERT INTO person_photos (person_id, photo_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6);

-- Create some new movies
INSERT INTO movies (title, release_date, description, duration, budget, country_id, director_id)
VALUES
    ('Movie 1', '2024-01-01', 'Description of Movie 1', 120, 1000000.00, 1, 5),
    ('Movie 2', '2023-02-02', 'Description of Movie 2', 110, 2000000.00, 2, 5),
    ('Movie 3', '2022-03-03', 'Description of Movie 3', 100, 3000000.00, 3, 5),
    ('Movie 4', '2021-04-04', 'Description of Movie 4', 90, 4000000.00, 4, 5),
    ('Movie 5', '2020-05-05', 'Description of Movie 5', 80, 5000000.00, 5, 5),
    ('Movie 6', '2019-06-06', 'Description of Movie 6', 70, 6000000.00, 6, 5),
    ('Movie 7', '2018-07-07', 'Description of Movie 7', 60, 7000000.00, 7, 5),
    ('Movie 8', '2017-08-08', 'Description of Movie 8', 50, 8000000.00, 8, 5),
    ('Movie 9', '2016-09-09', 'Description of Movie 9', 40, 9000000.00, 9, 5),
    ('Movie 10', '2015-10-10', 'Description of Movie 10', 30, 10000000.00, 10, 5);

-- Create some new characters
INSERT INTO characters (name, description, movie_id, actor_id)
VALUES
    ('Character 1', 'Description of Character 1', 1, 1),
    ('Character 2', 'Description of Character 2', 2, 2),
    ('Character 3', 'Description of Character 3', 3, 3),
    ('Character 4', 'Description of Character 4', 4, 4),
    ('Character 5', 'Description of Character 5', 5, 5),
    ('Character 6', 'Description of Character 6', 6, 6),
    ('Character 7', 'Description of Character 7', 7, 1),
    ('Character 8', 'Description of Character 8', 8, 2),
    ('Character 9', 'Description of Character 9', 9, 3),
    ('Character 10', 'Description of Character 10', 10, 4);

-- Create some users
INSERT INTO users (username, email, password, first_name, last_name, avatar_id)
VALUES
    ('user1', '1@email.com', 'password1', 'User', 'One', 7),
    ('user2', '2@email.com', 'password2', 'User', 'Two', 8),
    ('user3', '3@email.com', 'password3', 'User', 'Three', 9),
    ('user4', '4@email.com', 'password4', 'User', 'Four', 10);

-- Create some favorite movies
INSERT INTO favorite_movies (user_id, movie_id)
VALUES
    (1, 4),
    (1, 5),
    (1, 6),
    (2, 7),
    (2, 8),
    (2, 9),
    (3, 10),
    (3, 1),
    (3, 2),
    (4, 3),
    (4, 4),
    (4, 5);
