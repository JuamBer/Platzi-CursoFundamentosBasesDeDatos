USE `platziblog`;

SELECT estatus, COUNT(*) AS post_quantity FROM posts;

SELECT estatus, COUNT(*) AS post_quantity FROM posts GROUP BY estatus;

SELECT YEAR(fecha_publicacion) AS post_year, COUNT(*) AS post_quantity FROM posts GROUP BY post_year;

SELECT MONTHNAME(fecha_publicacion) AS post_month, COUNT(*) AS post_quantity FROM posts GROUP BY post_month;

SELECT estatus, MONTHNAME(fecha_publicacion) AS post_month, COUNT(*) AS post_quantity FROM posts GROUP BY estatus,post_month;