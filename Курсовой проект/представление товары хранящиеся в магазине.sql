#Товары по кол-ву, хранящиеся в магазине:

CREATE VIEW what_are_in_markets AS 
SELECT m.name AS market, p.name AS product, COUNT(*) AS amount
  FROM market AS m
  JOIN products_market AS pm
    ON m.id= pm.market_id
  JOIN product AS p
    ON pm.product_id=p.id
GROUP BY m.name, p.name;

SELECT*FROM what_are_in_market;