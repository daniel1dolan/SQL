-- CREATE TABLE author (
--     id SERIAL PRIMARY KEY,
--     name varchar(25)
-- );

-- CREATE TABLE article (
--     id SERIAL PRIMARY KEY,
--     title varchar(150),
--     author_id integer REFERENCES author (id)
-- );

-- INSERT INTO author VALUES 
-- (DEFAULT, 'Alex F.'),
-- (DEFAULT, 'Alex P.'),
-- (DEFAULT, 'Alina B.'),
-- (DEFAULT, 'Kazim S.'),
-- (DEFAULT, 'Meryem K.'),
-- (DEFAULT, 'Foorkan'),
-- (DEFAULT, 'Jesse'),
-- (DEFAULT, 'John'),
-- (DEFAULT, 'Matt'),
-- (DEFAULT, 'Austin'),
-- (DEFAULT, 'Steven'),
-- (DEFAULT, 'Daniel'),
-- (DEFAULT, 'Jaye'),
-- (DEFAULT, 'Sean'),
-- (DEFAULT, 'Nick');

-- INSERT INTO article VALUES 
-- (DEFAULT, 'JS Prototypes', 8),
-- (DEFAULT, 'JS Promises', 8),
-- (DEFAULT, 'Express Routes', 1),
-- (DEFAULT, 'Styling with Bootstrap', 5),
-- (DEFAULT, 'API calls with Google Maps', 8),
-- (DEFAULT, 'Python RPG Game', 10),
-- (DEFAULT, 'Object Oriented Programming in JS', 11),
-- (DEFAULT, 'Nested For Loops', 12),
-- (DEFAULT, 'Preparing for Technical Interviews', 12),
-- (DEFAULT, 'Why I went to a coding camp', 13),
-- (DEFAULT, 'Coding in Russia', 3),
-- (DEFAULT, 'Fizz Buzz -- The Solution', 4);

-- INSERT INTO article VALUES 
-- (DEFAULT, 'JS Stuff', 88);

-- SELECT author.id AS authorID, COUNT(author.id)
-- FROM author
-- INNER JOIN article ON author.id = article.author_id
-- GROUP BY author.id; 

SELECT author.id, name, title 
FROM author 
INNER JOIN article ON author.id = article.author_id
WHERE author.id = 8;