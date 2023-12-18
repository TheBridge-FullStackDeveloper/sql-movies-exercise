SELECT COUNT(DISTINCT genres) FROM movies_metadata mm;

SELECT title, revenue FROM movies_metadata mm WHERE revenue = (SELECT MAX(revenue) FROM movies_metadata mm2);

SELECT COUNT(*) FROM movies_metadata mm WHERE adult = 'True';

SELECT AVG(runtime) FROM movies_metadata mm 

SELECT title, vote_average FROM movies_metadata mm WHERE vote_average >= 7;

SELECT original_language, COUNT(*) FROM movies_metadata mm GROUP BY original_language; 

SELECT title, release_date FROM movies_metadata mm WHERE release_date LIKE '2000%';

SELECT title, status FROM movies_metadata mm WHERE status = 'Rumored';

SELECT title, belongs_to_collection FROM movies_metadata mm WHERE belongs_to_collection != ''; 

SELECT title, (revenue - budget) AS profitability FROM movies_metadata mm WHERE revenue != 0 AND budget != 0 ORDER BY profitability DESC; 