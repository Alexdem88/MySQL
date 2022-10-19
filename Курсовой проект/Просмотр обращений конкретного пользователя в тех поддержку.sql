#Просмотр обращений конкретного пользователя в тех поддержку:


SELECT CONCAT(c.firstname,' ', c.lastname) AS customer,
m.body,
COUNT(*) AS number_of_messages
FROM customers AS c
JOIN
messages AS m
ON c.id=m.customer_id
WHERE c.id=1
