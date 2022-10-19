USE vk;
SELECT firstname
FROM users
WHERE firstname LIKE 'A%' GROUP BY firstname ;
