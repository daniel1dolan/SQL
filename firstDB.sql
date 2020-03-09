
-- CREATE TABLE student (
--     name varchar,
--     website varchar,
--     github_username varchar,
--     points integer,
--     gender char(1),
--     cohorts_start_date date,
--     graduated boolean
-- );

-- CREATE TABLE student2 (
--   id SERIAL NOT NULL PRIMARY KEY,
--   name varchar,
--   website varchar,
--   github_username varchar,
--   points integer,
--   start_date date,
--   graduated boolean
-- );

-- INSERT INTO student2 VALUES 
-- (DEFAULT, 'Alex', 'DigitalCrafts.com', 'plaetzer', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Jaye', 'DigitalCrafts.com', 'jjenson', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'John', 'DigitalCrafts.com', 'jkearney', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Matt', 'DigitalCrafts.com', 'matsgit', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Nicholas', 'DigitalCrafts.com', 'nickgit', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Richard', 'DigitalCrafts.com', 'richardz', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Diego', 'DigitalCrafts.com', 'drivera', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Kazim', 'DigitalCrafts.com', 'kazimgit', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Foorkan', 'DigitalCrafts.com', 'jjenson', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Sean', 'DigitalCrafts.com', 'spage', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Alina', 'DigitalCrafts.com', 'abelova', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Daniela', 'DigitalCrafts.com', 'danielagit', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Alex', 'DigitalCrafts.com', 'afisher', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Jesse', 'DigitalCrafts.com', 'jmartinez', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Austin', 'DigitalCrafts.com', 'adenny', 10, '2020-03-09', FALSE);

-- CREATE TABLE student3 (
--   id SERIAL NOT NULL PRIMARY KEY,
--   name varchar,
--   website varchar,
--   github_username varchar,
--   points integer,
--   start_date date,
--   graduated boolean
-- );

-- INSERT INTO student3 VALUES 
-- (DEFAULT, 'Alex', 'DigitalCrafts.com', 'plaetzer', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Jaye', 'DigitalCrafts.com', 'jjenson', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'John', 'DigitalCrafts.com', 'jkearney', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Matt', 'DigitalCrafts.com', 'matsgit', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Nicholas', 'DigitalCrafts.com', 'nickgit', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Richard', 'DigitalCrafts.com', 'richardz', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Diego', 'DigitalCrafts.com', 'drivera', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Kazim', 'DigitalCrafts.com', 'kazimgit', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Foorkan', 'DigitalCrafts.com', 'jjenson', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Sean', 'DigitalCrafts.com', 'spage', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Alina', 'DigitalCrafts.com', 'abelova', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Daniela', 'DigitalCrafts.com', 'danielagit', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Alex', 'DigitalCrafts.com', 'afisher', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Jesse', 'DigitalCrafts.com', 'jmartinez', 10, '2020-03-09', FALSE), 
-- (DEFAULT, 'Austin', 'DigitalCrafts.com', 'adenny', 10, '2020-03-09', FALSE);

-- SELECT * FROM student2;

-- SELECT * FROM student2 WHERE points=10 AND name='Alex';

-- INSERT INTO student2 (name, github_username) VALUES ('Josh', 'Jmoneys');

-- UPDATE student2 SET points=8 WHERE id=1;

-- DELETE FROM student2 WHERE name='Josh';

-- INSERT INTO student2 (name, points) VALUES ('Josh', 100);

-- CREATE TABLE student (
--   name varchar,
--   github varchar UNIQUE NOT NULL,
--   points integer DEFAULT 0 CHECK (points >= 0),
--   start_date date NOT NULL,
--   graduated boolean DEFAULT FALSE,
--   PRIMARY KEY (name, github)
-- );

-- INSERT INTO student (name, github) VALUES ('Jason', 'JEphraim');

-- SELECT name, github_username FROM student2 WHERE github_username LIKE '%git%';

-- SELECT * FROM student2 WHERE website IS NULL;

-- ALTER TABLE student2 ADD last_name varchar(15);

-- ALTER TABLE student2 DROP COLUMN last_name;

-- ALTER TABLE student2 ALTER COLUMN name TYPE varchar(15);

-- SELECT COUNT(*) FROM student2;

-- SELECT MIN(points) FROM student2 WHERE github_username LIKE '%git%';

-- SELECT * FROM student2 ORDER BY points LIMIT 5 OFFSET 5;



