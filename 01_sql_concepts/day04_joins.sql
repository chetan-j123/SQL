/*
Day 4: Joins
Topics:
- INNER JOIN
- LEFT JOIN
*/

SELECT m.title, b.domestic_sales
FROM movies m
INNER JOIN boxoffice b
ON m.id = b.movie_id;

SELECT m.title, b.international_sales
FROM movies m
LEFT JOIN boxoffice b
ON m.id = b.movie_id;
