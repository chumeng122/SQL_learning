-- SQLite

-- https://www.codecademy.com/courses/learn-sql/projects/learn_sql_create_table

-- sqlite3 new_database.sqlite
-- .read p1.sql  
-- .tables

CREATE TABLE friends(
  id INTEGER,
  name TEXT,
  birthday DATE
);

INSERT INTO friends(id, name,birthday) VALUES (1,'Ororo Munroe', '30-5-1940');
-- SELECT * FROM friends;
INSERT INTO friends(id, name,birthday) VALUES (2,'friend A', '30-4-1940');
INSERT INTO friends(id, name,birthday) VALUES (3,'friend B', '30-3-1940');

UPDATE friends SET name = 'Storm Munroe' WHERE id = 1;

ALTER TABLE friends ADD COLUMN email TEXT;
UPDATE friends SET email = 'storm@codecademy.com' WHERE name = 'Storm Munroe';

DELETE FROM friends WHERE name = 'Storm Munroe';

SELECT * FROM friends;

--DROP TABLE friends;