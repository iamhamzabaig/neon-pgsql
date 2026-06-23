--TABLE ALIASES
SELECT
    f.title
FROM
    film AS f
ORDER BY
    f.title
LIMIT
    10;

--JOINS WITH ALIASES
SELECT
    c.customer_id,
    c.first_name,
    p.amount,
    p.payment_date
FROM
    customer AS c
    INNER JOIN payment AS p ON p.customer_id = c.customer_id
ORDER BY
    p.payment_date DESC
LIMIT
    20;

--SELF JOIN WITH ALIASES
SELECT
    f1.title,
    f2.title,
    f1.length
FROM
    film AS f1
    INNER JOIN film f2 ON f1.film_id <> f2.film_id
    AND f1.length = f2.length;