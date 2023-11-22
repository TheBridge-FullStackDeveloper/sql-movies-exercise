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
/*- Crear una consulta SQL que cuente el número de películas para adultos*/
/*- Calcular la duración promedio de las películas*/
/*- Listar películas con una puntuación de audiencia específica o superior*/
/*- Contar la cantidad de películas por idioma original*/
/*- Encontrar todas las películas lanzadas en un año específico*/
/*- Seleccionar películas que aún no han sido lanzadas (según la columna 'status')*/
/*- Seleccionar películas que aún no han sido lanzadas (según la columna 'status')*/
/*- Listar las películas que pertenecen a una colección*/
/*- Calcular la rentabilidad de las películas (suponiendo que los campos 'budget' y 'revenue' están completos y son correctos)*/