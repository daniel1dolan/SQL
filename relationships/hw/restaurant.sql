-- CREATE TABLE restaurant (
--     id SERIAL NOT NULL PRIMARY KEY,
--     name varchar,
--     address varchar,
--     category varchar
-- );

-- CREATE TABLE reviews (
--     id SERIAL PRIMARY KEY,
--     reviewer_id INTEGER REFERENCES reviewer (id),
--     stars INTEGER CHECK (1 <= stars and stars <= 5),
--     title VARCHAR(30),
--     review VARCHAR(500),
--     restaurant_id INTEGER REFERENCES restaurant (id)
-- );

-- CREATE TABLE reviewer (
--     id SERIAL NOT NULL PRIMARY KEY,
--     name varchar, 
--     email varchar,
--     karma integer CHECK (0 <= karma AND karma <= 7)
-- );

-- INSERT INTO restaurant VALUES
--     (DEFAULT, 'Burger King', '123 Main Street.', 'Fast Food'),
--     (DEFAULT, 'McDonalds', '245 South Street.', 'Fast Food'),
--     (DEFAULT, 'Hardees', '209 Woodland Road.', 'Fast Food'),
--     (DEFAULT, 'Wendys', '746 Main Street.', 'Fast Food'),
--     (DEFAULT, 'Witt Pit', '405 N South Street.', 'BBQ'),
--     (DEFAULT, 'Provinos', '305 Memorial Road.', 'Italian');

-- INSERT INTO reviewer VALUES
-- (DEFAULT, 'Austin', 'Austin@Austin.com', 7),
-- (DEFAULT, 'Jaye', 'Jaye@Jaye.com', 2),
-- (DEFAULT, 'Daniel', 'Daneil@Daniel.com', 3),
-- (DEFAULT, 'Mark', 'Mark@Mark.com', 5),
-- (DEFAULT, 'Alex', 'Alex@Alex.com', 6);

-- INSERT INTO reviews VALUES
-- (DEFAULT, 1, 5, 'Its Burger king lmao', 'The title says it all.', 1),
-- (DEFAULT, 2, 5, 'Pretty Good', 'Pretty good quality BBQ for the price.  I especially like how juicy and tender the moist beef brisket is.', 5),
-- (DEFAULT, 2, 5, 'Yummy', 'Generic review.', 3),
-- (DEFAULT, 3, 4, 'Decent', 'I especially like the chili.', 4),
-- (DEFAULT, 5, 5, 'BBQ', 'Best BBQ I have ever had!', 5),
-- (DEFAULT, 4, 4, 'Good Deal', 'They give you free food on your birthday!', 6),
-- (DEFAULT, 5, 3, 'Okay', 'Its okay I guess. Its McDonalds', 2),
-- (DEFAULT, 1, 3, 'Decent But Pricy', 'The title says it all.', 6),
-- (DEFAULT, 3, 4, 'Very good BBQ', 'The Brisket was great, but my potatoes were cold..', 5);

-- 1. 
-- SELECT restaurant_id, review
-- FROM reviews;

-- 2. 
-- SELECT restaurant.name, reviews.review
-- FROM restaurant
-- INNER JOIN reviews
-- ON restaurant.id = reviews.restaurant_id
-- WHERE restaurant.name = 'Burger King';

-- 3. 
-- SELECT reviewer.name, reviews.review
-- FROM reviewer
-- INNER JOIN reviews
-- ON reviewer.id = reviews.reviewer_id
-- WHERE reviewer.name = 'Austin';

-- 4. 
-- SELECT restaurant.name, reviews.review
-- FROM restaurant
-- INNER JOIN reviews
-- ON restaurant.id = reviews.restaurant_id;

-- 5. 
-- SELECT restaurant.name, AVG(reviews.stars)
-- FROM restaurant
-- INNER JOIN reviews
-- ON restaurant.id = reviews.restaurant_id
-- GROUP BY restaurant.name;

-- 6. 
-- SELECT restaurant.name, COUNT(reviews.review) as num_reviews
-- FROM restaurant
-- INNER JOIN reviews
-- ON restaurant.id = reviews.restaurant_id
-- GROUP BY restaurant.name;

-- 7. 
-- SELECT restaurant.name, reviewer.name, reviews.review
-- FROM restaurant
-- INNER JOIN reviews
-- ON restaurant.id = reviews.restaurant_id
-- INNER JOIN reviewer
-- ON reviews.reviewer_id = reviewer.id; 

-- 8. 
-- SELECT reviewer.name, AVG(reviews.stars) AS ave_stars
-- FROM reviewer
-- INNER JOIN reviews
-- ON reviewer.id = reviews.reviewer_id
-- GROUP BY reviewer.name;

-- 9. 
-- SELECT reviewer.name, MIN(reviews.stars) AS lowest_stars
-- FROM reviewer
-- INNER JOIN reviews
-- ON reviewer.id = reviews.reviewer_id
-- GROUP BY reviewer.name;

-- 10. 
-- SELECT category, COUNT(category)
-- FROM restaurant
-- GROUP BY category;

-- 11. 
-- SELECT restaurant.name, COUNT(reviews.stars)
-- FROM restaurant
-- INNER JOIN reviews
-- ON restaurant.id = reviews.restaurant_id
-- WHERE reviews.stars = 5
-- GROUP BY restaurant.name;

-- 12. 
-- SELECT restaurant.category, AVG(reviews.stars) AS avg_stars
-- FROM restaurant
-- INNER JOIN reviews
-- ON restaurant.id = reviews.restaurant_id
-- GROUP BY restaurant.category;