-- SQL Table Creation Examples (MySQL)
-- Run in MySQL Workbench step by step.
-- Note: The final ALTER/RENAME/TRUNCATE/DROP examples modify tables.
-- Run destructive examples only when you are ready to practice them.

-- 1. Create and select a database
CREATE DATABASE IF NOT EXISTS CompanyDB;
USE CompanyDB;

-- 2. Create an Employee table
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    age INT,
    salary DECIMAL(10,2),
    department VARCHAR(30)
);

INSERT INTO Employee VALUES
(1, 'Ravi', 25, 30000, 'IT'),
(2, 'Priya', 28, 45000, 'HR'),
(3, 'Kiran', 30, 50000, 'IT');

SELECT * FROM Employee;

-- 3. Create a Student table
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    age INT,
    course VARCHAR(30),
    marks INT
);

INSERT INTO Student VALUES
(101, 'Anu', 20, 'Python', 85),
(102, 'Ramesh', 21, 'SQL', 90),
(103, 'Sita', 19, 'Java', 78);

SELECT * FROM Student;

-- 4. Create a Department table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO Department VALUES
(1, 'IT', 'Hyderabad'),
(2, 'HR', 'Vijayawada'),
(3, 'Finance', 'Chennai');

SELECT * FROM Department;

-- 5. Create a Product table
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT
);

INSERT INTO Product VALUES
(1, 'Laptop', 55000, 10),
(2, 'Mouse', 500, 50),
(3, 'Keyboard', 1200, 25);

SELECT * FROM Product;

-- 6. Create a Customer table
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    phone VARCHAR(15)
);

-- 7. Create an Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);

-- 8. Create tables with a foreign key
CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

CREATE TABLE Items (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(50),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- 9. Create a table with NOT NULL and UNIQUE constraints
CREATE TABLE EmployeeDetails (
    emp_id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE,
    emp_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2)
);

-- 10. Create a table with DEFAULT and CHECK constraints
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    holder_name VARCHAR(50) NOT NULL,
    balance DECIMAL(10,2) DEFAULT 0,
    age INT CHECK (age >= 18)
);

-- 11. ALTER TABLE: add a column
ALTER TABLE Employee
ADD email VARCHAR(100);

-- 12. ALTER TABLE: modify a column
ALTER TABLE Employee
MODIFY emp_name VARCHAR(100);

-- 13. RENAME a table
-- Uncomment to run:
-- RENAME TABLE Employee TO Employees;

-- 14. TRUNCATE a table (removes all rows, keeps structure)
-- Uncomment to run:
-- TRUNCATE TABLE Student;

-- 15. DROP a table (removes table and its data)
-- Uncomment to run:
-- DROP TABLE Product;
