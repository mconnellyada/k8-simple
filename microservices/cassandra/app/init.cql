CREATE KEYSPACE film WITH REPLICATION = {'class':'SimpleStrategy', 'replication_factor': 1};

USE film;

CREATE TABLE movies (
    movie_id UUID,
    title TEXT,
    release_year INT,
    PRIMARY KEY ((movie_id))
);

INSERT INTO movies (movie_id, release_year, title) VALUES (uuid(), 2011, 'Tree of life');
INSERT INTO movies (movie_id, release_year, title) VALUES (uuid(), 1999, 'Life of Brian');
INSERT INTO movies (movie_id, release_year, title) VALUES (uuid(), 2022, 'Great Gatsby');