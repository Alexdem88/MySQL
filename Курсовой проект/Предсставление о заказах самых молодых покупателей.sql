#Предсставление о заказах самых молодых покупателей

CREATE VIEW order_for_youngest_customer AS
SELECT firstname, lastname, TIMESTAMPDIFF(YEAR, birthday, NOW())
AS age, COUNT(*) AS orders
FROM customers AS c
JOIN profiles AS p
  ON c.id = p.customer_id
JOIN orders AS o
  ON c.id = o.customer_id
GROUP BY firstname, lastname, age
ORDER BY age
LIMIT 5;

SELECT *
FROM order_for_youngest_customer;

