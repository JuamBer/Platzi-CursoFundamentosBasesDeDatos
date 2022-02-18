USE `platziblog`;


SELECT
  *
FROM
  posts;


SELECT
  titulo,
  fecha_publicacion,
  estatus
FROM
  posts;
  

SELECT
  titulo,
  fecha_publicacion AS publicado,
  estatus AS estado
FROM
  posts;


SELECT
  COUNT(*) AS numero_posts
FROM
  posts;