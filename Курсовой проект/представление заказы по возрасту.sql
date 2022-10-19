CREATE VIEW orders_by_age AS
SELECT 
  CASE
    WHEN TIMESTAMPDIFF(YEAR, p.birthday, NOW()) >=10 AND TIMESTAMPDIFF(YEAR, p.birthday, NOW()) <=20 THEN '10-20'
    WHEN TIMESTAMPDIFF(YEAR, p.birthday, NOW()) >=21 AND TIMESTAMPDIFF(YEAR, p.birthday, NOW()) <=30 THEN '21-30'
    WHEN TIMESTAMPDIFF(YEAR, p.birthday, NOW()) >=31 AND TIMESTAMPDIFF(YEAR, p.birthday, NOW()) <=40 THEN '31-40'
    WHEN TIMESTAMPDIFF(YEAR, p.birthday, NOW()) >=41 AND TIMESTAMPDIFF(YEAR, p.birthday, NOW()) <=50 THEN '41-50'
    WHEN TIMESTAMPDIFF(YEAR, p.birthday, NOW()) >=51 AND TIMESTAMPDIFF(YEAR, p.birthday, NOW()) <=60 THEN '51-60'
    WHEN TIMESTAMPDIFF(YEAR, p.birthday, NOW()) >=61 THEN '61+'
  END AS ageband,
COUNT(o.id) AS orders_number
FROM profiles AS p
JOIN
orders AS o
ON p.customer_id = o.customer_id
GROUP BY ageband
ORDER BY ageband;

SELECT*FROM orders_for_age_groups;

