-- Obtener la cantidad de películas por género

-- Encontrar la película con mayor recaudación
SELECT original_title, revenue
FROM movies_metadata
WHERE revenue = (SELECT MAX(revenue) FROM movies_metadata);

-- Crear una consulta SQL que cuente el número de películas para adultos

-- Calcular la duración promedio de las películas
SELECT avg(runtime) FROM movies_metadata;

-- Listar películas con una puntuación de audiencia específica o superior
SELECT original_title, vote_average FROM movies_metadata WHERE vote_average > 8;

-- Contar la cantidad de películas por idioma original

-- Encontrar todas las películas lanzadas en un año específico
SELECT original_title
FROM movies_metadata 
WHERE release_date LIKE '2017%';

-- Seleccionar películas que aún no han sido lanzadas (según la columna 'status')

-- Seleccionar películas que aún no han sido lanzadas (según la columna 'status')

-- Listar las películas que pertenecen a una colección

-- Calcular la rentabilidad de las películas (suponiendo que los campos 'budget' y 'revenue' están completos y son correctos)

