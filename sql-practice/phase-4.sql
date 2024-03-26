-- Your code here
-- STEP 2
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS relationships;
DROP TABLE IF EXISTS performance_reviews;
DROP TABLE IF EXISTS parties;

CREATE TABLE employees (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  department VARCHAR(50),
  role VARCHAR(50)
);

CREATE TABLE relationships (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first INTEGER,
  second INTEGER,
  FOREIGN KEY (first) REFERENCES employees(id),
  FOREIGN KEY (second) REFERENCES employees(id)
);

CREATE TABLE performance_reviews (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  employee_for INTEGER,
  score DECIMAL(2, 1),
  FOREIGN KEY (employee_for) REFERENCES employees(id)
);

CREATE TABLE parties (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  budget DECIMAL(5,2)
);

-- STEP 3
-- 1
INSERT INTO employees (first_name, last_name, department, role)
VALUES
('Michael', 'Scott', 'Management', 'Regional Manager');

-- 2
INSERT INTO employees (first_name, last_name, department, role)
VALUES
('Dwight', 'Schrute', 'Sales', 'Assistant Regional Manager');

-- 3
INSERT INTO employees (first_name, last_name, department, role)
VALUES
('Jim', 'Halpert', 'Sales', 'Sales Representative');

-- 4
INSERT INTO employees (first_name, last_name, department, role)
VALUES
('Pam', 'Beesly', 'Reception', 'Receptionist');

-- 5
INSERT INTO employees (first_name, last_name, department, role)
VALUES
('Kelly', 'Kapoor', 'Product Oversight', 'Customer Service Representative');

-- 6
INSERT INTO employees (first_name, last_name, department, role)
VALUES
('Angela', 'Martin', 'Accounting', 'Head of Accounting');

-- 7
INSERT INTO employees (first_name, last_name, department, role)
VALUES
('Roy', 'Anderson', 'Warehouse', 'Warehouse Staff');

-- 8
INSERT INTO relationships (first, second)
VALUES
(7, 4);

-- 9
INSERT INTO employees (first_name, last_name, department, role)
VALUES
('Ryan', 'Howard', 'Reception', 'Temp');

-- 10
INSERT INTO parties (budget)
VALUES
(100.00);

-- 11
INSERT INTO performance_reviews (employee_for, score)
VALUES
(2, 3.3);

-- 12
INSERT INTO performance_reviews (employee_for, score)
VALUES
(3, 4.2);

-- 13
UPDATE performance_reviews
SET score = 9.0
WHERE employee_for = 2;

-- 14
UPDATE performance_reviews
SET score = 9.3
WHERE employee_for = 3;

-- 15
UPDATE employees
SET role = 'Assistant Regional Manager'
WHERE id = 3;

-- 16
UPDATE employees
SET department = 'Sales', role = 'Sales Representative'
WHERE id = 8;

-- 17
INSERT INTO parties (budget)
VALUES
(200.00);

-- 18
INSERT INTO relationships (first, second)
VALUES
(6, 2);

-- 19
INSERT INTO performance_reviews (employee_for, score)
VALUES
(6, 6.2);

-- 20
INSERT INTO relationships (first, second)
VALUES
(8, 5);

-- 21
INSERT INTO parties (budget)
VALUES
(50.00);

-- 22
DELETE FROM relationships
WHERE first = 3 OR second = 3;

DELETE FROM performance_reviews
WHERE employee_for = 3;

DELETE FROM employees
WHERE id = 3;

-- 23
DELETE FROM relationships
WHERE (first = 4 AND second = 7) OR (first = 7 AND second = 4);

-- 24
INSERT INTO performance_reviews (employee_for, score)
VALUES
(4, 7.6);

-- 25
INSERT INTO performance_reviews (employee_for, score)
VALUES
(2, 8.7);

-- 26
DELETE FROM relationships
WHERE first = 8 OR second = 8;

DELETE FROM performance_reviews
WHERE employee_for = 8;

DELETE FROM employees
WHERE id = 8;

-- 27
INSERT INTO employees (first_name, last_name, department, role)
VALUES
('Jim', 'Halpert', 'Sales', 'Sales Representative');

-- 28
INSERT INTO employees (first_name, last_name, department, role)
VALUES
('Karen', 'Filippelli', 'Sales', 'Sales Representative');

-- 29
INSERT INTO relationships (first, second)
VALUES
(9, 10);

-- 30
INSERT INTO parties (budget)
VALUES
(120.00);

-- 31
DELETE FROM parties
WHERE id IN (SELECT id FROM parties ORDER BY id DESC LIMIT 1);

INSERT INTO parties (budget)
VALUES
(300.00);

-- 32
DELETE FROM relationships
WHERE (first = 10 AND second = 9) OR (first = 9 AND second = 10);

-- 33
INSERT INTO relationships (first, second)
VALUES
(4, 9);