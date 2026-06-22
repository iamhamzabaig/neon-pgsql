/**
SELECT
   first_name || ' ' ||
   last_name full_name,
   email
FROM
   customer;
**/

SELECT
   first_name, 
   last_name surname,
   email
FROM
   customer;


   SELECT
    first_name || ' ' || last_name "full name"
FROM
    customer;
