CREATE SCHEMA `platziblog` DEFAULT CHARACTER SET utf8;
USE `platziblog`;
CREATE TABLE `platziblog`.`people` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(2555) NULL,
  `last_name` VARCHAR(255) NULL,
  `address` VARCHAR(255) NULL,
  `city` VARCHAR(255) NULL,
  PRIMARY KEY (`id`)
);

SELECT * FROM platziblog.people;