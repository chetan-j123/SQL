-- LeetCode 175: Combine Two Tables
-- Topic: LEFT JOIN
-- Database: PostgreSQL / MySQL

-- Problem:
-- Show first name, last name, city, and state of each person.
-- If address does not exist, return NULL.

SELECT 
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM Person p
LEFT JOIN Address a
ON p.personId = a.personId;
