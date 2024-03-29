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

SELECT EMPLOYEES.FIRST_NAME
FROM EMPLOYEES;

SELECT bla.FIRST_NAME
FROM EMPLOYEES bla;
-----SQL JOIN
--IS USED TO GET DATA FROM 2 OR MORE TABLES THAT RELATED TO EACH OTHER
--PRIMARY KEY AND FOREIGN KEY RELATIONSHIP
--INNER JOIN, LEFT OUTER JOIN, RIGHT OUTER JOIN, FULL OUTER JOIN

--IN ODDER TO JOIN TWO TABLES HAS RELATIONSHIP
--SELECT DESIRED COLUMNS FROM BOTH TABLES
--FROM TABLE 1
--INNER JOIN TABLE 2 ON THE COMMON Column

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

--FIND OUT CITY(LOCATIONS) AND COUNTRY_NAME(COUNTRIES)
--IT DOES NOT MATTER WHICH TABLE COMES FIRST
--WHEN YOU DO INNER JOIN
SELECT LOCATIONS.CITY,COUNTRIES.COUNTRY_NAME
From LOCATIONS
INNER JOIN COUNTRIES ON LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID;


--DISPLAY DEPARTMENT_NAME(DEPARTMENTS) AND CITY(LOCATIONS)
--
SELECT DEPARTMENTS.DEPARTMENT_NAME, LOCATIONS.CITY
FROM DEPARTMENTS
INNER JOIN LOCATIONS ON LOCATIONS.LOCATION_ID = DEPARTMENTS.LOCATION_ID;



--ALIA VERSION (nickname)
SELECT d.DEPARTMENT_NAME,l.CITY
FROM DEPARTMENTS d
INNER JOIN LOCATIONS l ON d.LOCATION_ID = l.LOCATION_ID;


--INNER JOIN WILL RETURN THE DATA THAT MATCH FROM BOTH TABLE
--IT'S RETURNING ONLY ROWS THAT HAS MATCHING DEPARTMENT_ID FROM BOTH TABLE
--ANYTHING ELSE IS EXCLUDED
--FOR EXAMPLE: KIMBERLY WITH NO DEPARTMENT ID
--        DEPARTMENTS WITH NO EMPLOYEES(MEANING NONE OF THE EMPLOYEES HAS THOSE DEPARTMENT_ID;
--106

--DISPLAY FIRST_NAME(EMPLOYEES),DEPARTMENT_NAME(DEPARTMENTS)
--THEY ARE RELATED BY DEPARTMENT_ID
SELECT EMPLOYEES.FIRST_NAME, DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES
INNER JOIN DEPARTMENTS ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

--we want to display first_name,department_name
--including those that does not have matching department_id
--like kimberly has null department id but we still want to get that data
SELECT e.FIRST_NAME,d.DEPARTMENT_NAME
FROM EMPLOYEES e
LEFT OUTER JOIN DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--we want to display first_name,department_name
--including those department does not have any matching employee
SELECT e.FIRST_NAME,d.DEPARTMENT_NAME
FROM EMPLOYEES e
RIGHT OUTER JOIN DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--we want to display first_name,department_name
--including those department does not have any matching employeeS

SELECT e.FIRST_NAME,d.DEPARTMENT_NAME
FROM EMPLOYEES e
FULL OUTER JOIN DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--DISPLAY ALL DEPARTMENT_NAME(DEPARTMENTS) AND CITY(LOCATIONS)
--INCLUDING THOSE CITY WITH NO DEPARTMENT IN IT

SELECT d.DEPARTMENT_NAME,l.CITY
FROM DEPARTMENTS d
RIGHT OUTER JOIN LOCATIONS l on d.LOCATION_ID = L.LOCATION_ID;

--WE WANT TO DISPLAY THE VIDEO ON 39:00




