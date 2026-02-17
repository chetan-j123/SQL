/*
LeetCode 1068 - Product Sales Analysis I

Tables:
Sales
- sale_id (INT)
- product_id (INT)
- year (INT)
- quantity (INT)
- price (INT)

Product
- product_id (INT, Primary Key)
- product_name (VARCHAR)

Task:
Return product_name, year, and price for each sale.
*/

SELECT
    p.product_name,
    s.year,
    s.price
FROM Sales s
INNER JOIN Product p
    ON s.product_id = p.product_id;
