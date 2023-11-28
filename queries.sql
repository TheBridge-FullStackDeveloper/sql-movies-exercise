select * from movies_metadata;

--Obtener la cantidad de películas por género
SELECT COUNT(genres) FROM movies_metadata;

--Encontrar la película con mayor recaudación
SELECT title FROM movies_metadata where revenue = (select max (revenue) from movies_metadata);

--Calcular la duración promedio de las películas
select AVG (runtime) from movies_metadata;

--Listar películas con una puntuación de audiencia específica o superior
select vote_average FROM movies_metadata WHERE vote_average > 4.3;

--Contar la cantidad de películas por idioma original
select original_language, count (original_language) from movies_metadata group by original_language;

--Encontrar todas las películas lanzadas en un año específico
SELECT release_date FROM movies_metadata  where release_date >= '2000-01-01' and release_date <= '2000-12-31'

--Seleccionar películas que aún no han sido lanzadas (según la columna 'status')
SELECT title, status FROM movies_metadata WHERE status != 'Released';

--Listar las películas que pertenecen a una colección
SELECT title, belongs_to_collection FROM movies_metadata WHERE belongs_to_collection != '';

--Calcular la rentabilidad de las películas (suponiendo que los campos 'budget' y 'revenue' están completos y son correctos)
 SELECT title, (revenue - budget) AS profit FROM movies_metadata WHERE budget != 0 AND revenue != 0 order by profit desc;