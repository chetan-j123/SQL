/*
LeetCode 1378 - Replace Employee ID With The Unique Identifier

Tables:
Employees
- id (INT, Primary Key)
- name (VARCHAR)

EmployeeUNI
- id (INT)
- unique_id (INT)

Task:
Return each employee's name and their unique_id.
If an employee does not have a unique_id, return NULL.
*/

SELECT
    e.name,
    eu.unique_id
FROM Employees e
LEFT JOIN EmployeeUNI eu
    ON e.id = eu.id;
