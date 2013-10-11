DROP TABLE IF EXISTS users;
CREATE TABLE `hackableType`.`users` (`userid` INT NOT NULL AUTO_INCREMENT, `username` VARCHAR(50) NOT NULL, `password` VARCHAR(255) NOT NULL, `first_name` VARCHAR(50) NOT NULL, `last_name` VARCHAR(50) NOT NULL,PRIMARY KEY (`userid`));
INSERT INTO `hackableType`.`users` (userid, username, password, first_name, last_name) VALUES (1, 'jdean', 'fcgh5', 'Jason', 'Dean');
INSERT INTO `hackableType`.`users` (userid, username, password, first_name, last_name) VALUES (2, 'pfreitag', 'cgeht', 'Pete', 'Freitag');
INSERT INTO `hackableType`.`users` (userid, username, password, first_name, last_name) VALUES (3, 'bforta', 'cdgwrh', 'Ben', 'Forta');
