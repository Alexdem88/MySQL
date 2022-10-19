#В базе данных shop и sample присутствуют одни и те же таблицы,
# учебной базы данных. Переместите запись id = 1 из таблицы shop.users в 
#таблицу sample.users. Используйте транзакции.

DROP DATABASE IF EXISTS sample;
CREATE DATABASE sample;
use sample;

DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts (
id SERIAL PRIMARY KEY,
user_id INT,
total DECIMAL (11,2) COMMENT 'Счет',
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Счета пользователей и интернет магазина';


CREATE TABLE users(
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(45) NOT NULL,
	birthday_at DATE DEFAULT NULL,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO accounts (user_id, total) VALUES
(4, 5000.00),
(3, 0.00),
(2, 200.00),
(NULL, 25000.00);

START TRANSACTION;

INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
COMMIT;

SELECT * FROM users;

#Создайте представление, которое выводит название name товарной позиции из таблицы
# products и соответствующее название каталога name из таблицы catalogs.



