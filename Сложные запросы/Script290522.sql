#1
SELECT a.name
FROM users AS a
JOIN orders AS o ON (o.user_id = a.id)
WHERE o.id > 1
GROUP BY a.name;

#2Выведите список товаров products
# и разделов catalogs, который соответствует товару.

SELECT p.name, c.name, c.id  FROM products AS p
JOIN catalogs AS c ON (p.catalog_id = c.id)
Group BY p.id 

