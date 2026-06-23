DROP TABLE IF EXISTS T1;

CREATE TABLE
  T1 (LABEL CHAR(1) PRIMARY KEY);

DROP TABLE IF EXISTS T2;

CREATE TABLE
  T2 (score INT PRIMARY KEY);

INSERT INTO
  T1 (LABEL)
VALUES
  ('A'),
  ('B');

INSERT INTO
  T2 (score)
VALUES
  (1),
  (2),
  (3);

SELECT *
FROM T1
    CROSS JOIN T2;



SELECT
    f.film_id,
    f.title,
    f.description,
    fa.actor_id
FROM film f
INNER JOIN film_actor fa
    ON f.film_id = fa.film_id;