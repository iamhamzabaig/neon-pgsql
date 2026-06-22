SELECT
  first_name,
  last_name
FROM
  customer
ORDER BY
  first_name;



  SELECT
  first_name,
  last_name
FROM
  customer
ORDER BY
  last_name DESC;



 SELECT first_name, last_name FROM customer ORDER BY first_name ASC, last_name DESC;

 SELECT first_name, LENGTH(first_name) len FROM customer ORDER BY len DESC;