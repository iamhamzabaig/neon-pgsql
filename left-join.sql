SELECT
    f.film_id,
    f.title,
    f.description,
    i.inventory_id
FROM
    film f
    LEFT JOIN inventory i ON f.film_id = i.film_id;


SELECT
  f.film_id,
  f.title,
  f.description,
  i.inventory_id
FROM
  film f
  LEFT JOIN inventory i USING (film_id)
ORDER BY
  i.inventory_id;


  
SELECT
  f.film_id,
  f.title,
  f.description,
  i.inventory_id
FROM
  film f
  LEFT JOIN inventory i USING (film_id)
WHERE i.inventory_id IS NOT NULL
ORDER BY
  i.inventory_id;