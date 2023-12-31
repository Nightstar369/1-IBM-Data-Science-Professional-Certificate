# The following is done using MySql Workbench oppose to IBM DB2.
# Exercise 1: String Patterns
# 1.Retrieve all employees whose address is in Elgin,IL.
SELECT F_NAME,L_NAME
FROM hr.employees
WHERE ADDRESS LIKE '%Elgin,IL%';
# 2.Retrieve all employees who were born during the 1970’s.
SELECT F_NAME, L_NAME
FROM hr.employees
WHERE B_DATE LIKE '%197%';
# 3.Retrieve all employees in department 5 whose salary is between 60000 and 70000.
SELECT F_NAME,L_NAME
FROM hr.employees
WHERE DEP_ID = 5 AND (SALARY BETWEEN 60000 AND 70000);

# Exercise 2: Sorting
# 1.Retrieve a list of employees ordered by department ID.
SELECT DEP_ID, F_NAME, L_NAME
FROM hr.employees
ORDER BY DEP_ID;
# 2.Retrieve a list of employees ordered in descending order by department ID and within each department ordered alphabetically in descending order by last name.
SELECT DEP_ID, F_NAME, L_NAME
FROM hr.employees
ORDER BY DEP_ID DESC, L_NAME DESC;
# 3.In SQL problem 2 (Exercise 2 Problem 2), use department name instead of department ID. Retrieve a list of employees ordered by department name, and within each department ordered alphabetically in descending order by last name.
SELECT D.DEP_NAME, E.F_NAME, E.L_NAME
FROM hr.employees AS E, hr.departments AS D
WHERE E.DEP_ID = D.DEPT_ID_DEP
ORDER BY D.DEP_NAME, E.L_NAME DESC;

#Exercise 3: Grouping
# 1.For each department ID retrieve the number of employees in the department.
SELECT  DEP_ID, COUNT(*) as 'Employee Count'
FROM hr.employees
GROUP BY DEP_ID;
# 2.For each department retrieve the number of employees in the department, and the average employee salary in the department.
SELECT DEP_ID, COUNT(*), AVG(SALARY)
FROM hr.employees
GROUP BY DEP_ID;
# 3.Label the computed columns in the result set of SQL problem 2 (Exercise 3 Problem 2) as NUM_EMPLOYEES and AVG_SALARY.
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
FROM hr.employees
GROUP BY DEP_ID;
# 4.In SQL problem 3 (Exercise 3 Problem 3), order the result set by Average Salary.
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
FROM hr.employees
GROUP BY DEP_ID
ORDER BY AVG_SALARY;
# 5.In SQL problem 4 (Exercise 3 Problem 4), limit the result to departments with fewer than 4 employees.
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
FROM hr.employees
GROUP BY DEP_ID
HAVING NUM_EMPLOYEES < 4
ORDER BY AVG_SALARY;
