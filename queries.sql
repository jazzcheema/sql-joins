-- write your queries here


SELECT * FROM owners LEFT OUTER JOIN vehicles ON
owners.id = vehicles.owner_id
ORDER BY owners.id;


SELECT first_name, COUNT(owner_id) FROM owners LEFT OUTER JOIN vehicles ON
owners.id = vehicles.owner_id
--WHERE owner_id >= 1
GROUP BY first_name HAVING COUNT(owner_id) >= 1 ORDER BY first_name;



-- first_name, average_price, count
-- ORDER BY desc
-- WHERE vehicle count > 1 AND avg price > 10 000

SELECT first_name, ROUND(AVG(price), 0) as average_price, COUNT(owner_id)
FROM owners LEFT OUTER JOIN
vehicles ON owners.id = vehicles.owner_id
GROUP BY first_name HAVING AVG(price) > 10000 AND
COUNT(owner_id) > 1 ORDER BY first_name desc;