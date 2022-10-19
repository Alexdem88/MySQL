DROP  DATABASE IF EXISTS example;
CREATE DATABASE example;
USE example;


DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  created_at  VARCHAR(255),
  updated_at VARCHAR(255) 
 );

INSERT INTO users (created_at,updated_at) VALUES
  ('20.10.2013 8:10', '20.10.2013 8:10' ),
  ('20.10.2014 8:10', '20.10.2014 8:10'),
  ('20.10.2015 8:10', '20.10.2015 8:10'),
  ('20.10.2016 8:10', '20.10.2016 8:10'),
  ('20.10.2017 8:10', '20.10.2017 8:10'),
  ('20.10.2018 8:10', '20.10.2018 8:10');
 
ALTER TABLE users ADD new_created_at DATETIME ;
UPDATE users SET new_created_at = STR_TO_DATE(created_at, '%d.%m.%Y %l:%i');

ALTER TABLE users ADD new_updated_at DATETIME ;
UPDATE users SET new_updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %l:%i');

ALTER TABLE users DROP created_at;
ALTER TABLE users DROP updated_at;

ALTER TABLE users RENAME COLUMN new_created_at TO created_at;
ALTER TABLE users RENAME COLUMN new_updated_at TO updated_at;





SELECT * FROM users
    

 
/*
update users
	set created_at = str_to_date(created_at, '%d.%m.%Y %k:%i'),
		updated_at = str_to_date(updated_at, '%d.%m.%Y %k:%i');
		

ALTER TABLE users 
	CHANGE created_at created_at DATETIME DEFAULT NOW();
	
ALTER TABLE users 
	CHANGE updated_at updated_at DATETIME DEFAULT NOW() ON UPDATE NOW();

	  */