/*
LeetCode: Big Countries
Difficulty: Easy
Database: PostgreSQL

Problem:
Find countries that satisfy at least one condition:
1. Area >= 3,000,000
2. Population >= 25,000,000

Approach:
Use OR condition in WHERE clause.
*/

SELECT
    name,
    population,
    area
FROM World
WHERE area >= 3000000
   OR population >= 25000000;
