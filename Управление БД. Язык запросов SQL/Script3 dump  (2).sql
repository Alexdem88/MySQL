mysqldump -u root -p example > example.SQL
mysql sample < example.sql

mysqldump -u root -p --opt --where="1 limit 100" mysql help_keyword > hk100.sql

