

#Создайте представление, которое выводит название name товарной позиции из таблицы
# products и соответствующее название каталога name из таблицы catalogs.

USE shop;


CREATE OR REPLACE VIEW prods_desc( prod_name, c_name) AS
SELECT p.name, c.name
FROM products AS p
LEFT JOIN catalogs AS c 
ON p.catalog_id = c.id;

SELECT * FROM prods_desc;

