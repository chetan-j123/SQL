-- Problem: Duplicate Emails (LeetCode)
-- Pattern: GROUP BY + HAVING
-- Difficulty: Easy
-- Database: PostgreSQL

SELECT email AS Email
FROM person
GROUP BY email
HAVING COUNT(*) > 1;

-- Explanation:
-- 1. GROUP BY email groups identical email values.
-- 2. COUNT(*) counts how many rows are in each group.
-- 3. HAVING COUNT(*) > 1 filters duplicate emails.
