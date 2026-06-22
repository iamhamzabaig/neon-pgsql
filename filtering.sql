---DISTINCT 

CREATE TABLE colors(
	id SERIAL PRIMARY KEY,
	bcolor VARCHAR,
	fcolor VARCHAR
)

INSERT INTO
  colors (bcolor, fcolor)
VALUES
  ('red', 'red'),
  ('red', 'red'),
  ('red', NULL),
  (NULL, 'red'),
  (NULL, NULL),
  ('green', 'green'),
  ('blue', 'blue'),
  ('blue', 'blue');

SELECT
  id,
  bcolor,
  fcolor
FROM
  colors;



SELECT
  DISTINCT bcolor, fcolor
FROM
  colors
ORDER BY
  bcolor,
  fcolor;


SELECT DISTINCT rental_rate FROM film ORDER BY rental_rate;

---DISTINCT ON

CREATE TABLE student_scores (id SERIAL PRIMARY KEY, name VARCHAR(50) NOT NULL, subject VARCHAR(50) NOT NULL, score INTEGER NOT NULL);

INSERT INTO student_scores (name, subject, score)
VALUES ('Alice', 'Math', 90),
  ('Bob', 'Math', 85),
  ('Alice', 'Physics', 92),
  ('Bob', 'Physics', 88),
  ('Charlie', 'Math', 95),
  ('Charlie', 'Physics', 90);


SELECT DISTINCT ON (name) name, subject, score FROM student_scores ORDER BY name, score DESC;

--AND 
SELECT title, length, rental_rate FROM film WHERE length > 180 AND rental_rate < 1;


--IN and NOT IN
SELECT first_name, last_name FROM actor WHERE last_name IN ('Allen', 'Chase', 'Davis');

SELECT * FROM payment WHERE payment_date::date IN ('2007-02-15', '2007-02-16');

SELECT film_id, title FROM film WHERE film_id NOT IN (1,2,3) ORDER BY film_id;


-- <> (NOT EQUALS TO)
SELECT film_id, title FROM film WHERE film_id <> 1 ORDER BY film_id;

--BETWEEN 
SELECT * FROM payment WHERE payment_id NOT BETWEEN 17502 AND 17010;

SELECT 
