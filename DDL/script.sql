CREATE DATABASE `platziblog`;
USE `platziblog`;
CREATE TABLE `platziblog`.`categorias` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nombre_UNIQUE` (`nombre` ASC) VISIBLE
);
CREATE TABLE `platziblog`.`etiquetas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nombre_UNIQUE` (`nombre` ASC) VISIBLE
);
CREATE TABLE `platziblog`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(30) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  `nickname` VARCHAR(40) NOT NULL,
  `email` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `nickname_UNIQUE` (`nickname` ASC) VISIBLE
);
CREATE TABLE `platziblog`.`posts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(130) NOT NULL,
  `fecha_publicacion` DATETIME NULL,
  `contenido` TEXT NOT NULL,
  `status` CHAR(8) NULL DEFAULT '¨Activo¨',
  `usuario_id` INT NOT NULL,
  `categoria_id` INT NOT NULL,
  PRIMARY KEY (`id`)
);
ALTER TABLE
  `platziblog`.`posts`
ADD
  INDEX `posts_categorias_idx` (`categoria_id` ASC) VISIBLE,
ADD
  INDEX `posts_usuarios_idx` (`usuario_id` ASC) VISIBLE;
ALTER TABLE
  `platziblog`.`posts`
ADD
  CONSTRAINT `posts_usuarios` FOREIGN KEY (`usuario_id`) REFERENCES `platziblog`.`usuarios` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
ADD
  CONSTRAINT `posts_categorias` FOREIGN KEY (`categoria_id`) REFERENCES `platziblog`.`categorias` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;


CREATE TABLE `platziblog`.`comentarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `comentario` TEXT NOT NULL,
  `usuario_id` INT NOT NULL,
  `post_id` INT NOT NULL,
  PRIMARY KEY (`id`)
);

ALTER TABLE
  `platziblog`.`comentarios`
ADD
  INDEX `comentarios_usuarios_idx` (`usuario_id` ASC) VISIBLE,
ADD
  INDEX `comentarios_post_idx` (`post_id` ASC) VISIBLE;
ALTER TABLE
  `platziblog`.`comentarios`
ADD
  CONSTRAINT `comentarios_usuarios` FOREIGN KEY (`usuario_id`) REFERENCES `platziblog`.`usuarios` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
ADD
  CONSTRAINT `comentarios_post` FOREIGN KEY (`post_id`) REFERENCES `platziblog`.`posts` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

CREATE TABLE `platziblog`.`posts_etiquetas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `post_id` INT NOT NULL,
  `etiqueta_id` INT NOT NULL,
  PRIMARY KEY (`id`)
);

ALTER TABLE
  `platziblog`.`posts_etiquetas`
ADD
  INDEX `postetiquetas_post_idx` (`post_id` ASC) VISIBLE,
ADD
  INDEX `postetiquetas_etiquetas_idx` (`etiqueta_id` ASC) VISIBLE;
ALTER TABLE
  `platziblog`.`posts_etiquetas`
ADD
  CONSTRAINT `postetiquetas_post` FOREIGN KEY (`post_id`) REFERENCES `platziblog`.`posts` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
ADD
  CONSTRAINT `postetiquetas_etiquetas` FOREIGN KEY (`etiqueta_id`) REFERENCES `platziblog`.`etiquetas` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;