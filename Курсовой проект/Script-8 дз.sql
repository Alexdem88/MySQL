-- Создаём БД фуд маркета (аналог сбермаркет)
DROP DATABASE IF EXISTS food_market;
CREATE DATABASE food_market;

-- Переходим в неё
USE food_market;

-- Таблица покупателей
CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  firstname VARCHAR(100) NOT NULL, 
  lastname VARCHAR(100) NOT NULL,
  email VARCHAR(120) NOT NULL UNIQUE,
  phone VARCHAR(120) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
);

-- Таблица профилей
CREATE TABLE profiles (
  customer_id bigint(20) unsigned NOT NULL PRIMARY KEY,
  sex CHAR(1) NOT NULL,
  birthday DATE,
  address VARCHAR(200),
  bankcard INT  
);

-- Таблица продуктов
CREATE TABLE product (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) UNIQUE,
  price INT UNSIGNED,
  date_of_manufacture DATE,
  expiration_date DATE,
  description TEXT,
  catalog_id bigint(20) UNSIGNED,
  media_id bigint(20) UNSIGNED,
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
);

-- Таблица каталогов товаров
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(150) UNIQUE
);

-- Таблица магазина продуктов
CREATE TABLE market (
  id SERIAL PRIMARY KEY,
  name VARCHAR(150) UNIQUE
);

-- Таблица связи магазина и товара
CREATE TABLE products_market (
  id SERIAL PRIMARY KEY,
  market_id bigint(20) UNSIGNED,
  product_id bigint(20) UNSIGNED,
  amount INT UNSIGNED
);


-- Таблица заказов
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  customer_id bigint(20) UNSIGNED,
  product_id bigint(20) UNSIGNED,
  paid BOOLEAN,
  amount INT UNSIGNED NOT NULL,
  delivered BOOLEAN,
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
);

-- Таблица отзывов
CREATE TABLE reviews (
  id SERIAL PRIMARY KEY,
  customer_id bigint(20) UNSIGNED,
  product_id bigint(20) UNSIGNED,
  body TEXT NOT NULL,
  ranking TINYINT,
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
);

-- Таблица изображений товара
CREATE TABLE media (
  id SERIAL PRIMARY KEY,
  product_id bigint(20) UNSIGNED,
  filename VARCHAR(255) NOT NULL,
  size INT NOT NULL,
  metadata JSON,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Таблица сотрудников технической поддержки
CREATE TABLE customer_service (
  id SERIAL PRIMARY KEY,
  firstname VARCHAR(100) NOT NULL, 
  lastname VARCHAR(100) NOT NULL,
  email VARCHAR(120) NOT NULL UNIQUE,
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
);


-- Таблица обращений в техническую поддержку
CREATE TABLE messages (
  customer_id BIGINT UNSIGNED NOT NULL ,
  customer_service_id BIGINT UNSIGNED NOT NULL ,
  body TEXT NOT NULL,
  important BOOLEAN,
  delivered BOOLEAN,
  created_at DATETIME DEFAULT NOW(),
  PRIMARY KEY (customer_id, created_at)
);

