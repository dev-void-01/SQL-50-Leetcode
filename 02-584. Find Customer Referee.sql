+ We can simply solve the problem with the use of the OR operator

SELECT name
FROM customer
WHERE referee_id != 2 OR referee_id IS NULL
