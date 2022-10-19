DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id serial PRIMARY KEY,
	birthday_at DATE
);


INSERT 
	INTO users (birthday_at) VALUES 
	('2000-12-12'),
	('1999-1-4'),
	('1991-10-24'),
	('1991-10-24'),
	('1999-11-4'),
	('1979-2-4'),
	('1969-1-7'),
	('1969-1-7'),
	('1969-1-7'),
	('1959-3-8'),
	('1988-6-9');


SELECT avg(timestampdiff(YEAR , birthday_at, NOW())) AS mid_age FROM users;