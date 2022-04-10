--Display all FIRST_NAME that has letter a in second character
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '_a%';
;

--FROM Departments Table
--1.13 Display Unique LOCATION_ID
SELECT DISTINCT LOCATION_ID
FROM DEPARTMENTS;

--FROM LOCATIONS TABLE
--COUNT HOW MANY LOCATIONS WE HAVE
SELECT COUNT(*) FROM LOCATIONS;

--Department Table
 --   2.4 Display All Departments with DEPARTMENT_NAME Contains IT
 --        if the MANAGER_ID is not 103
SELECT *  FROM DEPARTMENTS
WHERE DEPARTMENT_NAME LIKE '%IT %' AND MANAGER_ID <> 103;

--Department Table
--  Display All Departments with DEPARTMENT_NAME Contains IT
-- Exclude the exact match department name IT
SELECT *  FROM DEPARTMENTS
WHERE DEPARTMENT_NAME LIKE '%IT %';

--3.4 Display the Employee Count for EACH FIRST_NAME (yeah and observe what you got)
 --   Filter the grouped result to only display if the count is more than 1
SELECT FIRST_NAME,COUNT(*)
FROM EMPLOYEES
GROUP BY FIRST_NAME
HAVING COUNT(*) >1;

-----SQL JOIN
--IS USED TO GET DATA FROM 2 OR MORE TABLES THAT RELATED TO EACH OTHER
--PRIMARY KEY AND FOREIGN KEY RELATIONSHIP
--INNER JOIN, LEFT OUTER JOIN, RIGHT OUTER JOIN, FULL OUTER JOIN

--IN ODDER TO JOIN TWO TABLES HAS RELATIONSHIP
--SELECT DESIRED COLUMNS FROM BOTH TABLES
--FROM TABLE 1
--INNER JOIN TABLE 2 ON THE COMMON TABLE

SELECT COUNTRIES.COUNTRY_NAME,REGIONS.REGION_NAME
FROM COUNTRIES
INNER JOIN REGIONS ON COUNTRIES.REGION_ID = REGIONS.REGION_ID;

--We can use alias for table to make above query slightly more readable
--nicknames are followed by space and the better or word
--you can use nickname to select the columns
--just like you did in java obj.VariableName
SELECT c.COUNTRY_NAME,r.REGION_NAME
FROM COUNTRIES c
INNER JOIN REGIONS r ON c.REGION_ID = r.REGION_ID;