DROP  DATABASE IF EXISTS example;
CREATE DATABASE example;
USE example;


DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at  DATETIME,
  updated_at DATETIME
) COMMENT = 'Покупатели';

INSERT INTO users (name) VALUES
  ('Геннадий'),
  ('Наталья'),
  ('Александр'),
  ('Сергей'),
  ('Иван'),
  ('Мария');
 
 
UPDATE users
set created_at = now(),
	updated_at = now();
		
SELECT * FROM users;