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
INSERT INTO
  `platziblog`.`people` (
    `id`,
    `last_name`,
    `first_name`,
    `address`,
    `city`
  )
VALUES
  (
    '1',
    'Vásquez',
    'Israel',
    'Calle Famosa Num 1',
    'México'
  ),
  (
    '2',
    'Hernández',
    'Mónica',
    'Reforma 222',
    'México'
  ),
  (
    '3',
    'Alanis',
    'Edgar',
    'Central 1',
    'Monterrey'
  );

SELECT
  *
FROM
  platziblog.people;