USE `platziblog`;

SELECT * FROM posts WHERE id < 50

SELECT * FROM posts WHERE estatus != 'activo' 

SELECT * FROM posts WHERE usuario_id IS NULL 
SELECT * FROM posts WHERE usuario_id IS NOT NULL

SELECT * FROM posts WHERE usuario_id IS NOT NULL 
    AND estatus = 'activo'
    AND id < 50
    AND categoria_id = 2
    AND YEAR(fecha_publicacion) = 2025