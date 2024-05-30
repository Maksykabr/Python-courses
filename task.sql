CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    department TEXT
);

INSERT INTO employees (name, age, department) VALUES ('Maks', 30, 'HR');
INSERT INTO employees (name, age, department) VALUES ('Mark', 25, 'Project manager');
INSERT INTO employees (name, age, department) VALUES ('Vadik', 22, 'Programer');

SELECT * FROM employees;
1|Maks|30|HR
2|Mark|25|Project manager
3|Vadik|22|Programer

SELECT * FROM employees WHERE age > 30;
SELECT * FROM employees WHERE age > 20;
1|Maks|30|HR
2|Mark|25|Project manager
3|Vadik|22|Programer

SELECT * FROM employees WHERE age > 25;
1|Maks|30|HR

UPDATE employees SET department = 'Programer' WHERE id = 2;
SELECT * FROM employees;
1|Maks|30|HR
2|Mark|25|Programer
3|Vadik|22|Programer

DELETE FROM employees where id = 3;
SELECT * FROM employees;
1|Maks|30|HR
2|Mark|25|Programer

CREATE TABLE departmens (
 id INTEGER PRIMARY KEY,
 name TEXT NOT NULL);

DROP TABLE departmens;

CREATE TABLE departments (
 id INTEGER PRIMARY KEY,
 name TEXT NOT NULL);

INSERT INTO departments (name) VALUES ('Programer');
INSERT INTO departments (name) VALUES ('Director');
INSERT INTO departments (name) VALUES ('HR');

SELECT * FROM departments;
1|Programer
2|Director
3|HR

CREATE TABLE new_employees (
     id INTEGER PRIMARY KEY,
     name TEXT NOT NULL,
     age INTEGER NOT NULL,
     department_id INTEGER,
     FOREIGN KEY (department_id) REFERENCES departments(id)
 );

INSERT INTO new_employees (id, name, age, department_id)
   ...> SELECT id, name, age, department AS department_id FROM employees;

DROP TABLE employees;

ALTER TABLE new_employees RENAME TO employees;

SELECT employees.id, employees.name AS employee_name, departments.name AS department_name
   ...> FROM employees
   ...> INNER JOIN departments ON employees.department_id = departments.id;