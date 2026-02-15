/*
LeetCode: Recyclable and Low Fat Products
Difficulty: Easy
Database: PostgreSQL

Problem:
Find product IDs that are both low fat and recyclable.

Approach:
Filter rows using WHERE clause with AND condition.
*/

SELECT
    product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';
