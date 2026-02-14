/*
Day 3: Aggregations
Topics:
- COUNT
- SUM
- AVG
- GROUP BY
- HAVING
*/

SELECT COUNT(*) AS total_movies
FROM movies;

SELECT director, COUNT(*) AS movie_count
FROM movies
GROUP BY director;

SELECT director, AVG(rating) AS avg_rating
FROM movies
GROUP BY director
HAVING AVG(rating) > 7;
