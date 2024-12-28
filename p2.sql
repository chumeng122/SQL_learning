-- https://www.codecademy.com/courses/learn-sql/projects/multiple-tables-project
-- Lyft Trip Data

SELECT * FROM trips;
-- id	date	pickup	dropoff	rider_id	car_id	type	cost
-- primary key: id
SELECT * FROM riders;
-- id	first	last	username	rating	total_trips	referred
-- primary key: id
SELECT * FROM cars;
-- id	model	OS	status	trips_completed
-- primary key: id

-- each user with every car model. USELESS
-- SELECT riders.first, riders.last, cars.model FROM riders
-- CROSS JOIN cars;

SELECT * FROM trips
LEFT JOIN riders ON riders.id = trips.rider_id;

SELECT * FROM trips
INNER JOIN cars ON trips.car_id = cars.id;

SELECT * FROM riders
UNION SELECT * FROM riders2;

-- BONUS Queries and Aggregates
-- average cost of the trip
SELECT AVG(cost) FROM trips; --ans: 31.915

-- Find irregular users less than 500 times!
SELECT first, last FROM riders
WHERE riders.total_trips < 500;
-- first	last
-- Sonny	Li
-- Kassa	Korley

-- Calculate the number of cars that are active.
SELECT COUNT(*) FROM cars
WHERE cars.status = 'active'; -- ans = 3

-- find the two cars that have the highest trips_complete
SELECT * FROM cars
ORDER BY cars.trips_completed DESC
LIMIT 2;
-- ans
-- id	model	OS	status	trips_completed
-- 3	Turing XL	Ryzac	active	164
-- 1	Ada	Ryzac	active	82
