DROP TABLE IF EXISTS employees;
CREATE TABLE `hackableType`.`employees` (`employeeid` INT NOT NULL AUTO_INCREMENT, `name` VARCHAR(50) NOT NULL, `salary` INT NOT NULL, `department` VARCHAR(50) NOT NULL,PRIMARY KEY (`employeeid`));
INSERT INTO `hackableType`.`employees` (employeeid, name, salary, department) VALUES (1, 'Pete Freitag', 100000, 'IT');
INSERT INTO `hackableType`.`employees` (employeeid, name, salary, department) VALUES (2, 'Jason Dean', 100000, 'IT');
INSERT INTO `hackableType`.`employees` (employeeid, name, salary, department) VALUES (3, 'Ben Forta', 100000, 'HR');
DROP TABLE IF EXISTS messages;
CREATE TABLE `hackableType`.`messages` (`id` INT NOT NULL AUTO_INCREMENT, `message` TEXT NOT NULL,PRIMARY KEY (`id`));
INSERT INTO `hackableType`.`messages` (id, message) VALUES (1, 'Ben - We need to hire someone in sales, please post a job listing.');
