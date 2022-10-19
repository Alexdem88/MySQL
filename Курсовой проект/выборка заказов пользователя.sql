#Просмотр всех заказов конкретного пользователя:

SELECT CONCAT(c.firstname,' ', c.lastname) AS customer,
o.id AS order_number, o.product_id, o.amount, o.paid, o.delivered
FROM customers AS c
JOIN
orders AS o
ON c.id=customer_id
WHERE c.id=1;
