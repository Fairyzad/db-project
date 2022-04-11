SELECT * FROM EMPLOYEES;

--CASE WHEN STATEMENT TO CONDITIONALLY DISPLAY VALUES

--DISPLAY EMPLOYEES FIRST_NAME,SALARY,SALARY_GRADE
--SALARY_GRADE COLUMN SHOULD BE BELOW VALUE
--WHEN SALARY > 8000 "ABOVE AVERAGE"
--ELSE "BELOW AVERAGE"
--AFTER CASE KEYWORD WRITE CONDITION

SELECT FIRST_NAME,SALARY,
       CASE
           WHEN SALARY >8000 THEN 'ABOVE AVERAGE'
           ELSE 'BELOW AVERAGE'
        END AS SALARY_GRADE
FROM EMPLOYEES;

-- Display Employees FIRST_NAME, SALARY , SALARY_GRADE2
--- SALARY_GRADE Column should be below VALUES
-- WHEN SALARY > 20000  THEN "A"
-- WHEN SALARY BETWEEN 10000 AND 20000  THEN 'B'
-- WHEN SALARY BETWEEN 5000 AND 10000  THEN "C"
-- ELSE "D"

SELECT FIRST_NAME,SALARY,
       CASE
            WHEN SALARY> 2000 THEN 'A'
            WHEN SALARY BETWEEN 10000 AND 20000  THEN 'B'
            WHEN SALARY BETWEEN 5000 AND 10000  THEN 'C'
            ELSE 'D'
        END AS SALARY_GRADE2
FROM EMPLOYEES
ORDER BY SALARY;
