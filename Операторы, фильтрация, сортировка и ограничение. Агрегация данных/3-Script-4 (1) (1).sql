USE example;

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
    storehouse_id int unsigned,
    product_name VARCHAR (255),
    value int unsigned 

) ;

INSERT INTO storehouses_products (storehouse_id, product_name, value) VALUES
  (1, 'book1', 231),
    (1, 'book2', 4),
    (1, 'book3', 0),
    (2, 'book4', 7),
    (2, 'book5', 56),
    (1, 'book6', 0),
    (1, 'book7', 4);
    

SELECT * FROM storehouses_products ORDER BY value DESC ;