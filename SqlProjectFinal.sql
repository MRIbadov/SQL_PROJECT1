--PART1
CREATE TABLE Book(
ID INT PRIMARY KEY,
Title VARCHAR(50),
Number_page INT,
ISBN NUMBER(10, 2),
CONSTRAINT BOOK_ID_PK PRIMARY KEY(BOOK_ID)


);

CREATE TABLE Publisher(
ID INT PRIMARY KEY,
Name1 VARCHAR(50),
www VARCHAR(20),
year_create NUMBER (4, 0) not null,
CONSTRAINT Publisher_ID_PK PRIMARY KEY(Publisher_ID)

);



ALTER TABLE Book ADD Publisher_ID integer not null;
ALTER TABLE Book ADD CONSTRAINT Book_Publisher_PK PRIMARY KEY (Publisher_ID) REFERENCES Publisher(Publisher_ID);



INSERT INTO Publsiher (Publisher_ID, Name1, year_create) VALUES(1, 'Akif Rafiqli', 2004);
INSERT INTO Publsiher (Publisher_ID, Name1, year_create) VALUES(2, 'JAMES Rafiqli', 2024);
INSERT INTO Publsiher (Publisher_ID, Name1, year_create) VALUES(3, 'Akif BOND', 2000);
INSERT INTO Publsiher (Publisher_ID, Name1, year_create) VALUES(4, 'CZy Rafiqli', 1998);


INSERT INTO Book(Book_ID, Title, Number_page, Publsiher_ID) VALUES(1001, 'how to reach goals', 900, 50);
INSERT INTO Book(Book_ID, Title, Number_page, Publsiher_ID) VALUES(1002, 'how to reach money', 700, 51);
INSERT INTO Book(Book_ID, Title, Number_page, Publsiher_ID) VALUES(1003, 'how to be programmer', 600, 52);
INSERT INTO Book(Book_ID, Title, Number_page, Publsiher_ID) VALUES(1004, 'how to reach cahs', 500, 53);


ALTER TABLE Book DROP CONSTRAINT Book_Publisher_PK;
DELETE FROM Book;
DROP TABLE Book;

DELETE FROM Publisher;
DROP TABLE Publisher;

--PART 2

UPDATE employees SET salary = salary + 6000 WHERE EMPLOYEE_ID = 104;

update employyes SET  first_name = 'Bond', salary = salary +  (salary * 0.17) where EMPLOYEE_ID = 139;

update employees set salary = salary + (salary * 0.15);

update employees set first_name = UPPER(first_name);

DELETE FROM EMPLOYEES Where employee_id = 148;

delete from employees where salary > 2500;

-- Part  3

SELECT employee_id, first_name, last_name FROM employees;

SELECT employee_id, first_name, last_name, salary FROM employees ORDER BY salary DESC;

SELECT employee_id AS "ID", 
first_name AS "Name",
last_name AS "Surname",
salary AS "Salary"  FROM employees ORDER BY (SELECT  MIN(salary) FROM employees);


SELECT employee_id AS "ID", 
first_name AS "Name",
last_name AS "Surname",
salary AS "Salary"  FROM employees ORDER BY first_name, salary;


SELECT employee_id AS "ID", 
first_name AS "Name",
last_name AS "Surname",
salary AS "Salary",
salary *2.0 AS "Bonus"

FROM employees;


SELECT AVG(salary) FROM employees;


SELECT employee_id, first_name, salary FROM employees WHERE salary BETWEEN  3500 AND 4500;


SELECT country_name FROM countries WHERE country_name LIKE 'N%';

SELECT first_name FROM employees WHERE first_name LIKE 'D%';


SELECT  CURRENT_DATE FROM DUAL;


SELECT ROUND(MIN(salary)) FROM employees;


SELECT first_name AS "Name" FROM employees ORDER BY LENGTH(first_name);


SELECT employee_id AS "ID" , first_name AS "Name" FROM employees WHERE NOT (MOD(employee_id, 2) = 0);

SELECT e.employee_id , e.first_name, e.last_name, e.salary, e.department_id 
FROM employees e FULL JOIN departments d ON e.department_id = d. department_id;


--PART 4


SELECT ABS(-91) "calculation absalute value of -91 = " FROM dual; 
SELECT FLOOR(71.4535436)  FROM dual;
SELECT ACOS(0.33) FROM DUAL;
SELECT COS(30) FROM DUAL;
SELECT SIN(45) FROM DUAL;

