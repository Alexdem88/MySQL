USE vk;
#1 Задание Пусть задан некоторый пользователь user id 6. Из всех пользователей соц.
# сети найдите человека, который больше всех общался с выбранным пользователем (написал ему сообщений).
SELECT
count(*) AS cnt,
u.firstname ,
u.lastname ,
m.to_user_id 'получатель' 
FROM users AS u
JOIN messages AS m ON u.id = m.from_user_id 
WHERE m.from_user_id = 6
GROUP BY m.from_user_id 
ORDER BY cnt DESC 



 # 2 Задание Подсчитать общее 
 #количество лайков, которые получили пользователи младше 10 лет

SELECT 
	firstname, lastname,  
	count(*) as likes_count
  FROM users
    JOIN media ON users.id = media.user_id
    JOIN likes ON media.id = likes.media_id
    jOIN profiles ON users.id = profiles.user_id AND ((YEAR(NOW())-YEAR(birthday)) < 10) 
  GROUP BY users.id 
  ORDER BY likes_count DESC
   ;




# 3 задание
SELECT count(*),
p.gender 
FROM profiles AS p 
JOIN users AS u ON u.id = p.user_id
GROUP BY gender
ORDER BY u.id 



