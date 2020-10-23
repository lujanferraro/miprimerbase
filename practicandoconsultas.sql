USE primer_base;

-- Select
SELECT * FROM usuarios;

SELECT login, nickname FROM usuarios;

SELECT * FROM posts;

SELECT	titulo AS encabezado, fecha_publicacion AS publicado, estatus AS estado  FROM posts;

SELECT	count(*) FROM posts;

SELECT	count(*) numero_posts FROM 	posts;

-- from

SELECT	*  FROM	usuarios 
LEFT JOIN posts on usuarios.id = posts.usuarios_id;

SELECT	* FROM	usuarios 
LEFT JOIN posts on usuarios.id = posts.usuarios_id
WHERE	posts.usuarios_id IS NULL;

SELECT	* FROM	usuarios 
RIGHT JOIN posts on usuarios.id = posts.usuarios_id;

SELECT	* FROM	usuarios 
	RIGHT JOIN posts on usuarios.id = posts.usuarios_id
WHERE posts.usuarios_id IS NULL; 

SELECT	* FROM	usuarios 
	INNER JOIN posts on usuarios.id = posts.usuarios_id;
    
SELECT	* FROM	usuarios 
	JOIN posts on usuarios.id = posts.usuarios_id;

-- WHERE

SELECT	* FROM	posts
WHERE	id	< 50;

SELECT	* FROM	posts
WHERE	estatus = 'Inactivo';

SELECT	* FROM	posts
WHERE	titulo LIKE '%escandalo%';

SELECT	* FROM	posts
WHERE	fecha_publicacion BETWEEN '2023-01-01' AND '2025-12-31';

SELECT	* FROM	posts
WHERE	YEAR(fecha_publicacion) BETWEEN '2023' AND '2024';

SELECT	* FROM	posts
WHERE	MONTH(fecha_publicacion) = '04';

SELECT	* FROM	posts
WHERE	usuarios_id IS NOT NULL;

SELECT	* FROM	posts
WHERE	usuarios_id IS NULL;

-- GROUP BY

SELECT	estatus, COUNT(*) AS post_number  FROM	posts
GROUP BY estatus;

SELECT	YEAR(fecha_publicacion) AS post_year, COUNT(*) AS post_number FROM	posts
GROUP BY post_year; 

SELECT	MONTHNAME(fecha_publicacion) AS post_month, COUNT(*) AS post_number FROM posts
GROUP BY post_month;

SELECT	estatus, MONTHNAME(fecha_publicacion) AS post_date, COUNT(*) AS post_number FROM	posts
GROUP BY estatus, post_date;

-- ORDER BY

SELECT	* FROM	posts
ORDER BY fecha_publicacion ASC;

SELECT	* FROM 	posts
ORDER BY fecha_publicacion DESC;

SELECT	* FROM	posts
ORDER BY titulo ASC;

SELECT	* FROM	posts
ORDER BY titulo DESC;

SELECT	* FROM	posts
ORDER BY usuarios_id ASC
LIMIT 5;

SELECT	MONTHNAME(fecha_publicacion) AS post_month, estatus, COUNT(*) AS post_quantity FROM posts
GROUP BY estatus, post_month
ORDER BY post_month;

-- HAVING

SELECT	MONTHNAME(fecha_publicacion) AS post_month, estatus, COUNT(*) AS post_quantity FROM posts
GROUP BY estatus, post_month
HAVING post_quantity > 1
ORDER BY post_month;








