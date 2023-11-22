-- Obtener la cantidad de películas por género
SELECT COUNT(DISTINCT genres) FROM movies_metadata;
--   279

-- Encontrar la película con mayor recaudación
SELECT title, revenue
FROM movies_metadata
WHERE revenue = (SELECT MAX(revenue) FROM movies_metadata);

-- Crear una consulta SQL que cuente el número de películas para adultos

-- Calcular la duración promedio de las películas
SELECT avg(runtime) FROM movies_metadata;
-- 90.90801576872536|

-- Listar películas con una puntuación de audiencia específica o superior
SELECT title, vote_average FROM movies_metadata WHERE vote_average > 8;

-- Contar la cantidad de películas por idioma original
SELECT COUNT(DISTINCT original_language) FROM movies_metadata;
-- 34

-- Encontrar todas las películas lanzadas en un año específico
SELECT title
FROM movies_metadata 
WHERE release_date LIKE '2017%';

-- Seleccionar películas que aún no han sido lanzadas (según la columna 'status')
SELECT title, STATUS FROM movies_metadata WHERE STATUS = 'Rumored';

-- Listar las películas que pertenecen a una colección
SELECT title, belongs_to_collection
FROM movies_metadata
WHERE length(belongs_to_collection) > 0;

-- Calcular la rentabilidad de las películas (suponiendo que los campos 'budget' y 'revenue' están completos y son correctos)
SELECT title, budget, revenue, revenue - budget AS "profability" FROM movies_metadata ORDER BY profability desc;

