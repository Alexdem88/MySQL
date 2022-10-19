CREATE TABLE logs (
  id INT(11) AUTO_INCREMENT  NOT NULL PRIMARY KEY,
  table_type VARCHAR(255) NOT NULL,
  entity_id VARCHAR(255) NOT NULL,
  name VARCHAR(100) NOT NULL,
  created_at DATETIME DEFAULT NOW()
  ) ENGINE=ARCHIVE DEFAULT CHARSET=utf8;

DELIMITER //

CREATE TRIGGER log_users_on_insert
AFTER INSERT ON customers
FOR EACH ROW
BEGIN 
INSERT INTO logs SET table_type='customers', entity_id=NEW.id, name=NEW.firstname;
END//

CREATE TRIGGER log_catalogs_on_insert
AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN 
INSERT INTO logs SET table_type='catalogs', entity_id=NEW.id, name=NEW.name;
END//

CREATE TRIGGER log_products_on_insert
AFTER INSERT ON product
FOR EACH ROW
BEGIN 
INSERT INTO logs SET table_type='products', entity_id=NEW.id, name=NEW.name;
END//

- Следить за тем, чтобы проставлялся catalog_id в таблице product, если забываем, то ставиться минимальный.

DELIMITER //

CREATE TRIGGER check_catalog_id_insert
BEFORE INSERT ON product
FOR EACH ROW
BEGIN
  DECLARE cat_id INT;
  SELECT id INTO cat_id FROM catalogs ORDER BY id LIMIT 1;
  SET NEW.catalog_id=COALESCE(NEW.catalog_id, cat_id);
END//

- Запрет на удаление складов

DELIMITER //

CREATE TRIGGER no_markets_delete
BEFORE DELETE ON market
FOR EACH ROW
BEGIN
  SIGNAL SQLSTATE '45000'
  SET MESSAGE_TEXT = 'This record is protected! You are not allowed to remove it!';
END//