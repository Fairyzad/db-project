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





