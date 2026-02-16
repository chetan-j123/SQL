/*
DAY 6 — SQL Window Functions (Core Concepts)
Database: PostgreSQL

Topics Covered:
1. ROW_NUMBER()
2. RANK()
3. DENSE_RANK()

------------------------------------------------
WINDOW FUNCTIONS:
They perform calculations across a set of rows
related to the current row without collapsing rows.
------------------------------------------------
*/


/* ------------------------------------------------
1. ROW_NUMBER()
--------------------------------------------------
- Assigns a unique sequential number to rows
- Works on occurrence count
- Even if values repeat, row number is always unique
-------------------------------------------------- */

SELECT
    customer,
    order_date,
    amount,
    ROW_NUMBER() OVER (
        PARTITION BY customer
        ORDER BY order_date
    ) AS rn
FROM sales;


/*
Explanation:
- PARTITION BY customer → groups rows by customer
- ORDER BY order_date → sorts rows inside each customer group
- ROW_NUMBER() → assigns 1, 2, 3... based on sorted order
*/


/* ------------------------------------------------
2. RANK()
--------------------------------------------------
- Assigns rank based on ORDER BY column
- Same values → same rank
- Gap appears after tie
-------------------------------------------------- */

SELECT
    product_id,
    price,
    RANK() OVER (
        ORDER BY price DESC
    ) AS rank_value
FROM products;


/*
Example:
Price | Rank
200   | 1
200   | 1
300   | 3   ← gap occurs
*/


/* ------------------------------------------------
3. DENSE_RANK()
--------------------------------------------------
- Similar to RANK()
- Same values → same rank
- NO gaps after tie
-------------------------------------------------- */

SELECT
    product_id,
    price,
    DENSE_RANK() OVER (
        ORDER BY price DESC
    ) AS dense_rank_value
FROM products;


/*
Example:
Price | Dense Rank
200   | 1
200   | 1
300   | 2   ← no gap
*/
