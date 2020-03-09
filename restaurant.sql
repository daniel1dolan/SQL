-- CREATE TABLE restaurant (
--     id SERIAL NOT NULL PRIMARY KEY,
--     distance_from_headquarters integer,
--     stars integer,
--     category varchar,
--     favorite_dish varchar,
--     does_takeout boolean,
--     last_meal_there date
        -- name varchar
-- )

-- INSERT INTO restaurant VALUES
-- (DEFAULT, 1, 4, 'Steakhouse', 'French Fries', TRUE, '2020-03-06', 'Taste of Texas'),
-- (DEFAULT, 1, 3, 'BBQ', 'Smoked Brisket', TRUE, '2020-03-01', 'Aunt Pookies Barbecue'),
-- (DEFAULT, 1, 3, 'Mediterraean', 'Falafel', TRUE, '2020-02-17', 'Niko Nikos'),
-- (DEFAULT, 1, 4, 'Traditional American', 'Green Goddess Salad', TRUE, '2020-03-01', 'Bellagreen');

-- 1. 
-- SELECT * FROM restaurant WHERE stars=5;

-- 2.
-- SELECT favorite_dish FROM restaurant WHERE stars=5;

-- 3.
-- SELECT id FROM restaurant WHERE name='Taste of Texas';

-- 4.
-- SELECT * FROM restaurant WHERE category='BBQ';

-- 5.
-- SELECT * FROM restaurant WHERE does_takeout=TRUE;

-- 6.
-- SELECT * FROM restaurant WHERE category='BBQ' AND does_takeout=TRUE;

-- 7.
-- SELECT * FROM restaurant WHERE distance_from_headquarters < 2;

-- 8. 
-- SELECT * FROM restaurant WHERE '2020-03-09' - last_meal_there <= 7;

-- 9.
-- SELECT * FROM restaurant WHERE '2020-03-09' - last_meal_there <= 7 AND stars = 5;