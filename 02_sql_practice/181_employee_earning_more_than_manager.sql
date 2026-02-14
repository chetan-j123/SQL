-- Problem: Employees Earning More Than Their Managers (LeetCode)
-- Pattern: SELF JOIN
-- Difficulty: Easy
-- Database: PostgreSQL

SELECT
    e.name AS Employee
FROM employee e
INNER JOIN employee m
    ON e.managerId = m.id
WHERE e.salary > m.salary;

-- Explanation:
-- 1. We perform a SELF JOIN on the employee table.
-- 2. 'e' represents the employee and 'm' represents the manager.
-- 3. We join using e.managerId = m.id to link employees to their managers.
-- 4. We filter rows where the employee's salary is greater than the manager's salary.
