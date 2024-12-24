# Basic commands:

## Start MySQL

```
mysql -u username -p [-h hostname -P portnumber databasename]
```

## Showing databases, schemas and their info

```
SHOW DATABASES;
SHOW DATABASES LIKE '%schema';
USE mysql;  -- Specifies a database to use
SHOW TABLES;
SHOW TABLES LIKE 'time%';
DESCRIBE table;
DESC table;
SHOW GRANTS;
SHOW GRANTS FOR root@localhost;
SELECT User, Host, Grant_priv, Super_priv FROM mysql.user;
SHOW PROCESSLIST; -- Shows 
```

## Dumping and loading

```
mysqldump -u username -p db_name > backup-file.sql
mysql -u username -p db_name < backup-file.sql
```

## Changing passoword of user

```
ALTER USER 'mjunqueira'@'localhost' IDENTIFIED BY 'new_password';
```