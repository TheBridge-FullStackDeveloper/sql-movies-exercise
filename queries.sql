
CREATE TABLE IF NOT EXISTS movies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    release_date DATE,
    genre VARCHAR(255),
    ...
   
);

LOAD DATA INFILE '/descargas/movies_metadata.csv'
INTO TABLE movies
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS; 

SELECT genre, COUNT(*) AS cantidad_peliculas
FROM movies
GROUP BY genre;
SELECT *
FROM movies
ORDER BY revenue DESC
LIMIT 1;

SELECT COUNT(*) AS cantidad_peliculas_adultas
FROM movies
WHERE is_adult = 1;

SELECT AVG(duration) AS duracion_promedio
FROM movies;

SELECT *
FROM movies
WHERE audience_score >= 8.0; 

SELECT original_language, COUNT(*) AS cantidad_peliculas
FROM movies
GROUP BY original_language;

SELECT *
FROM movies
WHERE YEAR(release_date) = 2022;

SELECT *
FROM movies
WHERE status = 'Not Released';

SELECT *
FROM movies
WHERE collection_name = 'Marvel Cinematic Universe';

SELECT title, 
       budget, 
       revenue, 
       ((revenue - budget) / budget) * 100 AS rentabilidad_porcentaje
FROM movies
WHERE budget IS NOT NULL AND revenue IS NOT NULL AND budget > 0;



