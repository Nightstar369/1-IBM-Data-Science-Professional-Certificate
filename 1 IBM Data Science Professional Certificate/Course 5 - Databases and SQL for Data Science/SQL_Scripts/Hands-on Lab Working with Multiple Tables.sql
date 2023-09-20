# Exercise 1: Accessing Multiple Tables with Sub-Queries
# 1.Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.
SELECT * FROM hr.employees WHERE JOB_ID IN (SELECT JOB_IDENT FROM hr.jobs);
# 2.Retrieve only the list of employees whose JOB_TITLE is Jr. Designer.
SELECT * FROM hr.employees WHERE JOB_ID IN (SELECT JOB_IDENT FROM hr.jobs WHERE JOB_TITLE = 'Jr. Designer');
# 3.Retrieve JOB information and who earn more than $70,000.
SELECT * FROM hr.jobs WHERE JOB_IDENT IN (SELECT JOB_ID FROM hr.employees WHERE SALARY > 70000);
# 4.Retrieve JOB information and list of employees whose birth year is after 1976.
SELECT * FROM hr.jobs WHERE JOB_IDENT IN (SELECT JOB_ID FROM hr.employees WHERE YEAR(B_DATE) > 1976);
# 5.Retrieve JOB information and list of female employees whose birth year is after 1976.
SELECT * FROM hr.jobs WHERE JOB_IDENT IN (SELECT JOB_ID FROM hr.employees WHERE YEAR(B_DATE) > 1976 AND SEX = 'F');

# Exercise 2: Accessing Multiple Tables with Implicit Joins
# 1.Perform an implicit cartesian/cross join between EMPLOYEES and JOBS tables.
SELECT * FROM hr.employees, hr.jobs;
# 2.Retrieve only the EMPLOYEES records that correspond to jobs in the JOBS table.
SELECT * FROM hr.employees, hr.jobs WHERE hr.employees.JOB_ID = hr.jobs.JOB_IDENT;
# 3.Redo the previous query, using shorter aliases for table names.
SELECT E.* FROM hr.employees AS E, hr.jobs AS J WHERE E.JOB_ID = J.JOB_IDENT;
# 4.Redo the previous query, but retrieve only the Employee ID, Employee Name and Job Title.
SELECT EMP_ID, F_NAME, L_NAME, JOB_TITLE FROM hr.employees AS E, hr.jobs AS J WHERE E.JOB_ID = J.JOB_IDENT;
# 5.Redo the previous query, but specify the fully qualified column names with aliases in the SELECT clause.
SELECT E.EMP_ID, E.F_NAME, E.L_NAME, J.JOB_TITLE FROM hr.employees AS E, hr.jobs AS J WHERE E.JOB_ID = J.JOB_IDENT;
