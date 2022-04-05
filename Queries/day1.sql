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

--Range checking is much simple in sql using
--Between....And
--IS same as columnValue >= lowerLimit And column value<= upperLimit
--Above query can be much simpler and more readable as below
SELECT * FROM  EMPLOYEES
WHERE SALARY BETWEEN 5000 AND 12000;

--Display the Employee that have JOB_ID of
--AD_VP
--AD_ASST
--FI_ACCOUNT
--AC_ACCOUNT
SELECT FIRST_NAME,JOB_ID FROM EMPLOYEES
WHERE JOB_ID ='AD_VP'
  OR JOB_ID='FI_ACCOUNT'
  OR JOB_ID='AD_ASST'
  OR JOB_ID='AC_ACCOUNT';

--Using keyword IN for multiple possible value of same column in condition
SELECT FIRST_NAME,JOB_ID FROM EMPLOYEES
WHERE  JOB_ID IN ('AD_VP','FI_ACCOUNT','AD_ASST','AC_ACCOUNT');


--HOW TO SAT NOT IN SQL
-- for equality check !=  <>(diamond operator,)
    --FIND OUT ALL REGIONS EXPECT THE REGION_ID OF 1
SELECT * FROM REGIONS
WHERE REGION_ID !=1;
--WHERE REGION_ID <> 1;

SELECT * FROM REGIONS
WHERE REGION_NAME <> 'Americas';

--FOR BETWEEN AND --> NOT BETWEEN ..AND
--Display the Employee that DOES NOT make more than 5000 and less than 12000
SELECT FIRST_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY NOT BETWEEN 5000 AND 12000;

--FOR IN ---> NOT IN
--Display the Employee that have JOB_ID
--IS NOT one of these
--AD_VP
--AD_ASST
--FI_ACCOUNT
--AC_ACCOUNT

SELECT FIRST_NAME,JOB_ID
FROM EMPLOYEES
WHERE JOB_ID NOT IN ('AD_VP','AD_ASST','FI_ACCOUNT','AC_ACCOUNT');


--HOW TO USE NULL IN CONDITION?
-- For example:FIND OUT ALL DEPARTMENTS that DOES NOT have MANAGER_ID
SELECT * FROM DEPARTMENTS
WHERE MANAGER_ID IS NULL ;

-- For example:FIND OUT ALL DEPARTMENTS that have MANAGER_ID
SELECT * FROM DEPARTMENTS
WHERE MANAGER_ID IS not NULL ;

--Sorting the result in ascending(Low to high)
--OR descending order(High to Low)
--ORDER BY CLAUSE can be used to order the result of your query
--It use either column name or column index
--It must be the last part of the statement
--ASC for (Low to High) by default
--DESC(HIGH TO LOW)

--Display Employee First_Name and Last_Name and Salary
--Try to sort by below criteria separately
--First_Name ASC(ASCENDING ORDER)
--Salary DESC
--Last_Name DESC
SELECT FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES
--ORDER BY FIRST_NAME ASC;
--ORDER BY SALARY DESC;
--ORDER BY LAST_NAME DESC;
ORDER BY 1 DESC; --This means sort the result by first column
--SQL INDEX START WITH 1 NOT 0!

--WHAT ABOUT THE PARTIAL SEARCH
--WE USE LIKE AND % (WILD CARD)
--% can represent 0 or more character of any kind
-- _can represent exactly one character of any kind

--Display all the first_name that start with letter A in employee table
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'A%';

--Display all the first_name that end with letter A in employee table


