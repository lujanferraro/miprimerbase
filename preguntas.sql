USE primer_base;

-- conocer la cantidad de posts por categoria

SELECT categoria, COUNT(*)  cantidad_posts 
FROM categorias AS c
 INNER JOIN posts AS p ON c.id = p.categorias_id
GROUP BY c.id
ORDER BY cantidad_posts DESC



-- conocer la cantidad de posteos por usuarios
SELECT nickname, count(*)  cantidad_posts
FROM usuarios
 INNER JOIN posts ON usuarios.ID= posts.usuarios_id
 GROUP BY usuarios.ID
 ORDER BY cantidad_posts DESC;
 
 -- quiero saber tambien las categorias que escribe cada usuario
 
 SELECT nickname, count(*) cantidad_posts, GROUP_CONCAT(categoria)
 FROM usuarios
 INNER JOIN posts ON usuarios.ID =posts.usuarios_id
INNER JOIN categorias ON categorias.id= posts.categorias_id
 GROUP BY usuarios.ID
 ORDER BY cantidad_posts DESC;
 
 

