SELECT
  customer_id
FROM
  payment
GROUP BY
  customer_id
ORDER BY
  customer_id;




SELECT
  customer_id,
  SUM (amount)
FROM
  payment
GROUP BY
  customer_id
ORDER BY
  customer_id;


SELECT customer_id, amount FROM payment ORDER BY customer_id;

SELECT
    customer_id,
    first_name || ' ' || last_name AS full_name,
    SUM(amount) AS amount
FROM payment
INNER JOIN customer USING (customer_id)
GROUP BY
    customer_id,
    full_name
ORDER BY
    amount DESC;