/*
SQL Basics & Database Concepts

Topics:
- What is SQL & Database
- CREATE / DROP
- CREATE TABLE
- INSERT
- TRUNCATE
*/

-- Create a database
CREATE DATABASE company_db;

-- Drop database
DROP DATABASE company_db;

-- Create table
CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    age INT
);

-- Insert data (all columns)
INSERT INTO students VALUES
(1, 'Chetan', 20),
(2, 'Arjun', 22);

-- Insert data (specific columns)
INSERT INTO students (id, name) VALUES
(3, 'Kamala');

-- Truncate table (remove all rows)
TRUNCATE TABLE students;
