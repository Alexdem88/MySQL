CREATE VIEW items_with_category(item, catalog) AS 
SELECT p.name, pm.id 
FROM 
products_market AS pm 
JOIN 
product AS p 
ON p.id=pm.id;

SELECT * FROM items_with_category;