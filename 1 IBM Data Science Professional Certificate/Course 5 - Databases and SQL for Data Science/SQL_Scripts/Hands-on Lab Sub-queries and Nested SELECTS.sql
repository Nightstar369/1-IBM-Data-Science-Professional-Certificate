# Exercise:
# 1.Problem:Execute a failing query (i.e. one which gives an error) to retrieve all employees records whose salary is lower than the average salary.
SELECT *
FROM hr.employees
WHERE SALARY < AVG(SALARY);
# 2.Problem:Execute a working query using a sub-select to retrieve all employees records whose salary is lower than the average salary.
SELECT *
FROM hr.employees
WHERE SALARY < (SELECT AVG(SALARY) FROM hr.employees);
# 3.Problem:Execute a failing query (i.e. one which gives an error) to retrieve all employees records with EMP_ID, SALARY and maximum salary as MAX_SALARY in every row.
SELECT EMP_ID, SALARY, MAX(SALARY) AS MAX_SALARY 
FROM hr.employees;
# 4.Problem:Execute a Column Expression that retrieves all employees records with EMP_ID, SALARY and maximum salary as MAX_SALARY in every row.
SELECT EMP_ID, SALARY, (SELECT MAX(SALARY) FROM hr.employees) AS MAX_SALARY
FROM hr.employees;
# 5.Problem:Execute a Table Expression for the EMPLOYEES table that excludes columns with sensitive employee data (i.e. does not include columns: SSN, B_DATE, SEX, ADDRESS, SALARY).
SELECT * 
FROM ( SELECT EMP_ID, F_NAME, L_NAME, DEP_ID FROM hr.employees) AS EFLD;