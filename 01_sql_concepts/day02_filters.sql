/*
Day 2: Filtering Data
Topics:
- WHERE
- BETWEEN
- IN
- LIKE
- NULL handling
*/

SELECT * FROM boxoffice
WHERE domestic_sales BETWEEN 1000000 AND 5000000;

SELECT * FROM movies
WHERE title LIKE '%Star%';

SELECT *
FROM movies
WHERE director IS NOT NULL;
