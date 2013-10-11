DROP TABLE IF EXISTS categories;
CREATE TABLE `hackableType`.`categories` (`cat_id` INT NOT NULL, `cat_name` VARCHAR(50) NOT NULL, `cat_description` VARCHAR(400));
INSERT INTO `hackableType`.`categories` (cat_id, cat_name, cat_description) VALUES (1, 'Housewares', 'Lorem ispum houswares are awesome');
INSERT INTO `hackableType`.`categories` (cat_id, cat_name, cat_description) VALUES (2, 'Kitchen and Bath', 'Lorem ipsum Kitchen and Bath, two great tastes that go great together');
INSERT INTO `hackableType`.`categories` (cat_id, cat_name, cat_description) VALUES (3, 'Small Appliances', 'The that special person in your life');
INSERT INTO `hackableType`.`categories` (cat_id, cat_name, cat_description) VALUES (4, 'Power Tools', 'Cause you can');
