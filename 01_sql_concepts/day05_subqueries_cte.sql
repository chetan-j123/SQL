/*
Day 5: Subqueries & CTE
Topics:
- IN
- EXISTS
- WITH (CTE)
*/

SELECT *
FROM movies
WHERE id IN (
    SELECT movie_id
    FROM boxoffice
);

SELECT *
FROM movies m
WHERE EXISTS (
    SELECT 1
    FROM boxoffice b
    WHERE b.movie_id = m.id
);

WITH high_revenue AS (
    SELECT movie_id
    FROM boxoffice
    WHERE domestic_sales > 100000000
)
SELECT m.title
FROM movies m
JOIN high_revenue h
ON m.id = h.movie_id;
