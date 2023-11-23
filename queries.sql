--Obtener la cantidad de películas por género
select genres, COUNT(*) as nº_peliculas from movies_metadata group by genres;

--Encontrar la película con mayor recaudación
--select max(revenue) from movies_metadata;
select title, revenue from movies_metadata where revenue = (SELECT MAX(revenue) FROM movies_metadata);

--Crear una consulta SQL que cuente el número de películas para adultos
--Calcular la duración promedio de las películas
select avg(runtime) from movies_metadata; 

--Listar películas con una puntuación de audiencia específica o superior
SELECT title, popularity from movies_metadata where popularity > 5;

--Contar la cantidad de películas por idioma original
select original_language, COUNT(*) as nº_peliculas from movies_metadata group by original_language;

--Encontrar todas las películas lanzadas en un año específico
select title, release_date from movies_metadata where release_date BETWEEN '2016-01-01' AND '2017-01-01' order by release_date ;

--Seleccionar películas que aún no han sido lanzadas (según la columna 'status')
select title from movies_metadata where status = '';

--Listar las películas que pertenecen a una colección
select title, belongs_to_collection from movies_metadata where belongs_to_collection != '';

--Calcular la rentabilidad de las películas (suponiendo que los campos 'budget' y 'revenue' están completos y son correctos)
select title, revenue, budget, (revenue / budget) as rentabilidad from movies_metadata where revenue > 0 and budget > 0 order by rentabilidad;
