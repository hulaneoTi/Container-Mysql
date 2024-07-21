# Container-Mysql

Comandos para testar

mysql -h 127.0.0.1 -P 3306 -u root -p1234 -e "CREATE USER IF NOT EXISTS 'admin'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;"

mysql -h 127.0.0.1 -P 3306 -uadmin -p1234 -e "CREATE DATABASE meu_banco;"

mysql -h 127.0.0.1 -P 3306 -uadmin -p1234 -e "SHOW DATABASES;"

mysql -h 127.0.0.1 -P 3306 -uadmin -p1234 -e "DROP DATABASE meu_banco;"
