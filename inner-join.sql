--Using PostgreSQL INNER JOIN to join two tables
SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    c.email,
    p.amount,
    p.payment_date
FROM
    customer AS c
    INNER JOIN payment AS p ON p.customer_id = c.customer_id
ORDER BY
    p.payment_date;

--Using PostgreSQL INNER JOIN to join three tables
SELECT
    c.customer_id,
    c.first_name || ' ' || c.last_name AS customer_name,
    s.first_name || ' ' || s.last_name AS staff_name,
    p.amount,
    p.payment_date
FROM
    customer c
    INNER JOIN payment p ON p.customer_id = c.customer_id
    INNER JOIN staff s ON s.staff_id = p.staff_id
ORDER BY
    p.payment_date;