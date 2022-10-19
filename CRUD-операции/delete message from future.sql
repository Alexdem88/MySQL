USE vk;

DELETE FROM messages
WHERE created_at > now()
;