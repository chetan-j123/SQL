/*
DAY 7 — Advanced Window Functions
Database: PostgreSQL

Topics Covered:
1. SUM() OVER (PARTITION BY)
2. Running Total
3. DATE_TRUNC()
------------------------------------------------
*/


/* ------------------------------------------------
1. Group-wise Total using SUM() OVER
--------------------------------------------------
- Calculates total per group without GROUP BY
-------------------------------------------------- */

SELECT
    customer,
    amount,
    SUM(amount) OVER (
        PARTITION BY customer
    ) AS total_spent_by_customer
FROM sales;


/*
Example:
Customer A → 1000 + 200 + 1800 = 3000
*/


/* ------------------------------------------------
2. Running Total (Cumulative Sum)
--------------------------------------------------
- Shows how total grows over time
- Uses ORDER BY inside window function
-------------------------------------------------- */

SELECT
    customer,
    order_date,
    amount,
    SUM(amount) OVER (
        PARTITION BY customer
        ORDER BY order_date
    ) AS running_total
FROM sales;


/*
Explanation:
- PARTITION BY customer → separate running totals
- ORDER BY order_date → accumulate from first date to current
*/


/* ------------------------------------------------
3. DATE_TRUNC()
--------------------------------------------------
- Truncates date to month/day/year level
- Useful for time-based aggregation
-------------------------------------------------- */

SELECT
    DATE_TRUNC('month', order_date) AS month,
    SUM(amount) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;


/*
Examples:
DATE_TRUNC('month', '2022-02-01') → 2022-02-01
DATE_TRUNC('year',  '2022-05-10') → 2022-01-01
*/
