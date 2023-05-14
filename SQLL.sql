create database SQLL;
use SQLL;
create table users_tbl(
user_id int not null primary key auto_increment,
user_firstname VARCHAR(40) not null,
user_lastname VARCHAR(40) not null,
user_email VARCHAR(60) not null,
user_password VARBINARY(256)
);
			
INSERT INTO SQLL.users_tbl (user_firstname, user_lastname, user_email, user_password) 
VALUES (UPPER('Andres'), UPPER('Lozano'), 'andresl0zano@gmail.com',AES_ENCRYPT
('password', '$2a$12$Br.rAKsYldTM.qZWtIRlaulIflMj.Zc4c8dN0nSKx7bJa5VzF/h4G'));
INSERT INTO SQLL.users_tbl (user_firstname, user_lastname, user_email, user_password) 
VALUES (UPPER('Petito'), UPPER('Ardila'), 'Ardila@gmail.com',AES_ENCRYPT
('andresl0zano', '$2a$12$Br.rAKsYldTM.qZWtIRlaulIflMj.Zc4c8dN0nSKx7bJa5VzF/h4G'));

SELECT *, CAST(AES_DECRYPT(user_password, '$2a$12$Br.rAKsYldTM.qZWtIRlaulIflMj.Zc4c8dN0nSKx7bJa5VzF/h4G') 
AS CHAR(50)) end_data FROM users_tbl WHERE user_id = 1;    

select * from users_tbl;
