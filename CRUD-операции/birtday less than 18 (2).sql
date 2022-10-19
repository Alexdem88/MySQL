USE vk;

#ALTER TABLE profiles ADD is_active BIGINT(255) DEFAULT false NULL;

UPDATE profiles
SET is_active = 1
WHERE YEAR(CURRENT_TIMESTAMP) - YEAR(birthday) - (RIGHT(CURRENT_TIMESTAMP, 5) < RIGHT(birthday, 5)) < 18
;

SELECT birthday
FROM profiles 
WHERE is_active=1;