ALTER TABLE `platziblog`.`people` 
ADD COLUMN `birth_date` DATETIME NULL AFTER `city`;

ALTER TABLE `platziblog`.`people` 
DROP COLUMN `birth_date`;