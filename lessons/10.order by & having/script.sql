USE `platziblog`;

SELECT * FROM posts ORDER BY fecha_publicacion ASC;
SELECT * FROM posts ORDER BY fecha_publicacion DESC;

SELECT * FROM posts ORDER BY titulo ASC;

SELECT * FROM posts ORDER BY usuario_id ASC;

SELECT * FROM posts ORDER BY fecha_publicacion ASC LIMIT 5;

SELECT MONTHNAME(fecha_publicacion) AS post_month, estatus, COUNT(*) AS post_quantity 
FROM posts GROUP BY estatus, post_month ORDER BY post_month;

SELECT
    MONTHNAME(fecha_publicacion) AS post_month,
    estatus,
    COUNT(*) AS post_quantity
FROM
    posts
GROUP BY
    estatus,
    post_month
HAVING 
    post_quantity > 1 
ORDER BY
    post_month;