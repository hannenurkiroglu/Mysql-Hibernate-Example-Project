CREATE USER 'hanne'@'localhost' IDENTIFIED BY 'Deneme_passwd_0';

CREATE DATABASE deneme CHARACTER SET utf8mb4;
GRANT ALL PRIVILEGES ON deneme.* TO 'hanne'@'localhost';

CREATE DATABASE test_deneme CHARACTER SET utf8mb4;
GRANT ALL PRIVILEGES ON test_deneme.* TO 'hanne'@'localhost';

exit;
