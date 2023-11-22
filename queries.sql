/*## ✔️ Tareas a Realizar*/

/*- Importa la base de datos `movies.sql` en tu gestor de bases de datos.*/

/*- Obtener la cantidad de películas por género*/
SELECT genres, COUNT(*) as total_genres
FROM movies_metadata
GROUP BY genres;

/*- Encontrar la película con mayor recaudación*/
SELECT original_title, revenue
FROM movies_metadata
WHERE revenue = (SELECT MAX(revenue) FROM movies_metadata);

/*- Crear una consulta SQL que cuente el número de películas para adultos NO FUNCIONA SERIA V null OR F*/
SELECT adult FROM movies_metadata WHERE >= 18 

/*- Calcular la duración promedio de las películas*/
SELECT AVG(runtime) as averger
FROM movies_metadata

/*- Listar películas con una puntuación de audiencia específica o superior*/
SELECT *
FROM movies_metadata
WHERE vote_average >= 7.0 

/*- Contar la cantidad de películas por idioma original*/
SELECT original_language, COUNT(*) as total
FROM movies_metadata
GROUP BY original_language;

/*- Encontrar todas las películas lanzadas en un año específico*/ 
SELECT *
FROM movies_metadata
WHERE EXTRACT(YEAR FROM TO_DATE(release_date, 'YYYY-MM-DD')) = 2020;


/*- Seleccionar películas que aún no han sido lanzadas (según la columna 'status')*/
SELECT *
FROM movies_metadata
WHERE status = 'Rumored';

/*- Listar las películas que pertenecen a una colección*/
/*- Calcular la rentabilidad de las películas (suponiendo que los campos 'budget' y 'revenue' están completos y son correctos)*/