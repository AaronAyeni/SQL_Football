DROP TABLE movies;

-- Creating a table
CREATE TABLE movies(
    id SERIAL,
    title VARCHAR(255),
    duration INT, 
    rating VARCHAR(255)
);

SELECT * FROM movies;

-- CREATE
--  INSERT INTO table_name (column_name) VALUES (value1);

INSERT INTO movies (title, duration, rating) VALUES ('Alien', 117, '18');
-- INSERT INTO movies (title, duration, rating) VALUES ('KILL BILL', 111, '18');
INSERT INTO movies (title, duration, rating) VALUES ('The Imitation Game', 114, '12A');
INSERT INTO movies (title, duration, rating) VALUES ('Iron Man', 126, '12A');
INSERT INTO movies (title, duration, rating) VALUES ('The Martian', 144, '15');
-- INSERT INTO movies (title, rating) VALUES ('Braveheart', 'PG');
INSERT INTO movies (title, duration, rating) VALUES ('Guardians of the Galaxy', 121, '12A');
INSERT INTO movies (title, duration, rating) VALUES ('You Only Live Twice', 117, 'PG');
INSERT INTO movies (title, duration, rating) VALUES ('I Know What You Did Last Summer', 101, '18');


-- SELECT * FROM movies WHERE rating = 'PG';

-- UPDATE

-- UPDATE movies SET (Duration, rating) = (170, '12A') WHERE id = 5;

-- SELECT * FROM movies;





-- Query select examples

--SELECT * FROM movies ORDER BY duration DESC;
--SELECT COUNT (*) FROM MOVIES;
--SELECT DISTINCT rating FROM movies;
--SELECT RATING, COUNT(DISTINCT rating) FROM movies;
--SELECT DISTINCT rating FROM movies;
-- SELECT rating, COUNT(*), AVG(duration) FROM movies WHERE duration < 120 GROUP BY rating;
