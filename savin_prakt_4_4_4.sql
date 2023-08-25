use vk;

SELECT users.username, chats.title,chats.description FROM users, chats, users_to_chats
WHERE users.id=users_to_chats.user_id AND users_to_chats.chat_id=chats.id AND 
users.id=2 ORDER BY chats.title DESC;

SELECT users.username, chats.title,users_to_chats.enter_datetime 
FROM users, chats, users_to_chats
WHERE users.id=users_to_chats.user_id AND users_to_chats.chat_id=chats.id AND 
users.id=5 ORDER BY users_to_chats.enter_datetime;

SELECT users.username, chats.title,users_to_chats.enter_datetime 
FROM users, chats, users_to_chats
WHERE users.id=chats.owner_id AND users_to_chats.chat_id=chats.id AND 
chats.id=1;


