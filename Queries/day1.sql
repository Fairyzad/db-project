--This is how you write comment in sql
-- single line comment look like this

/*
 This is how you write multi
 line comment
 */
--each query you write known as sql statement
--* means all, here it means all columns
-- from some table that exist in the database
-- Just like Java,
--SQL Statements end in semi-colon; and it's mandatory

SELECT * FROM REGIONS;
--If you want to run second statement
--you just need to click the query to focus the cursor and click run
SELECT * FROM COUNTRIES;

SELECT * FROM EMPLOYEES;
--RESTRICTING COLUMNS IN THE RESULT
--SQL IS SPACE INSENSITIVE

SELECT FIRST_NAME FROM EMPLOYEES;

--More than one columns can be specified separated by comma,
SELECT FIRST_NAME,LAST_NAME,EMAIL
FROM EMPLOYEES;

SELECT * FROM DEPARTMENTS;

SELECT DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID
FROM DEPARTMENTS;

SELECT * FROM JOB_HISTORY;

SELECT * FROM JOBS;

SELECT * FROM LOCATIONS;

/*
 Only Getting Unique value from the result
 for example,only get unique first name from employees table
 */

SELECT DISTINCT FIRST_NAME
FROM EMPLOYEES;

-- Distinct keyword uses for remove duplicate
--Get only unique lasts names
--This is looking for people with unique first name last name,full name
SELECT DISTINCT FIRST_NAME,LAST_NAME
FROM EMPLOYEES;

--Restricting rows in the result using where clause

--COMPARISON Operators =, > >=, < <=, !=, <>

--LOGICAL Operators: AND OR

--DISPLAY THE Employee information for the employee with first_name Ellen
-- In SQL We use single quote for String.
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME = 'Ellen';--Ellen != ellen, values are case sensitive

--Display the Employee First_Name, Last Name, salary
--for the employee with salary 11000

SELECT  FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY = 11000;

--Display the Employee First_Name, Last Name, salary
--for the employee with salary 4800 and First_Name David
-- Logical AND
SELECT  FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES
WHERE FIRST_NAME= 'David'AND SALARY= 4800;

--Display the Employee First_Name, Last Name, salary
--for the employee with salary 4800 or First_Name David
-- Logical OR
SELECT  FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES
WHERE FIRST_NAME= 'David'OR SALARY= 4800;


--Display the Employee that make more than 5000 and less than 12000
-- Logical OR
SELECT * FROM EMPLOYEES
WHERE SALARY>5000 AND SALARY <12000;

--Display the Employee that have JOB_ID of
--AD_VP
--AD_ASST
--FI_ACCOUNT
--AC_ACCOUNT
SELECT * FROM EMPLOYEES
WHERE JOB_ID ='AD_VP'
  OR JOB_ID='FI_ACCOUNT'
  OR JOB_ID='AD_ASST'
  OR JOB_ID='AC_ACCOUNT';




