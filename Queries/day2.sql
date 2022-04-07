-- WHAT ABOUT THE PARTIAL SEARCH
-- WE USE LIKE AND % (WILD CARD)
--  % can represent 0 or more character of any kind
--  _ can represent exactly one character of any kind
/*

 'D%'--anything that starts with D, David, Dog,Danny
 '%d'-anything that ends with d, dad,kid,bird
 '%d%---anything that contains d.
    Adam, Cassandra, Brandon,Aladdin,
    sid,bid,kid,
    david,danny,dog

    'D%a'--anything that starts with D and ends with a.
     Diana, Donna , Damla , Daria

    'S%e%n'-- -- any start with S end with n
                --and has e something in the middle
    Steven,, Stephen, Selen , Serkan , Sebastian

 'T_'--starts with T and followed by exactly one character of any kind
    Tj , TD , Ta , T! , TV , T2,

 '_a_'-- starts with any one character, followed by a
             and followed by any one character
            Dad , Man , Fat, Tab , Gap , Mad

 Like STATEMENT only works for string(Varchar)
 */

SELECT FIRST_NAME FROM EMPLOYEES
--WHERE FIRST_NAME LIKE 'D%';--9
--WHERE FIRST_NAME LIKE 'Da%';--5
--WHERE FIRST_NAME LIKE '%d'; --6
--WHERE FIRST_NAME LIKE '%d%'; --15
--WHERE FIRST_NAME LIKE 'D%a'; --1
--WHERE FIRST_NAME LIKE 'S%e%n'; --3
--WHERE FIRST_NAME LIKE 'T_';--1
WHERE FIRST_NAME LIKE  '_a_'; --1

SELECT PHONE_NUMBER FROM EMPLOYEES
--WHERE PHONE_NUMBER LIKE '515%';--21 STARTS WITH 515 --21
WHERE PHONE_NUMBER LIKE '%.121.%';--CONTAINS WITH 121--8

-- YOU CAN OPTIONALLY GIVE AN ALIAS( NICKNAME) FOR YOUR COLUMN
-- TO CHANGE THE RESULTING COLUMN NAME (ONLY CHANGING DISPLAY NOT ACTUALLY CHANGING IN DATABASE )
-- USING THE KEYWORD AS RIGHT AFTER COLUMN NAME
-- and PROVIDE NICKNAME Either without " " if single word
-- and USE "" IF MORE THAN ONE WORD   AS "MORE THAN ONE"

-- Display all FIRST_NAME , SALARY in Employees table
-- modify the column name for Salary in result to Money
SELECT FIRST_NAME,SALARY AS MONEY
FROM EMPLOYEES;



-- Display all FIRST_NAME , LAST_NAME in Employees table
-- modify the column name for AS BELOW
-- FIRST_NAME -> GIVEN_NAME    LAST_NAME --> FAMILY_NAME
SELECT FIRST_NAME AS  GIVEN_NAME, LAST_NAME AS  FAMILY_NAME
FROM EMPLOYEES;

-- Display all FIRST_NAME , LAST_NAME in Employees table
-- modify the column name for AS BELOW
-- FIRST_NAME -> GIVEN NAME    LAST_NAME --> FAMILY NAME
SELECT FIRST_NAME AS "GIVEN NAME", LAST_NAME AS "FAMILY NAME"
FROM EMPLOYEES;


-- CONCATENATION IN SQL USE DOUBLE PIPE || (THIS IS NOT OR )
-- DISPLAY FIRST_NAME , LAST_NAME , FULL_NAME FOR EMPLOYEE
SELECT FIRST_NAME, LAST_NAME,
       FIRST_NAME|| ' '|| LAST_NAME AS "FULL_NAME"
FROM EMPLOYEES;

--ARITHMETIC OPERATION:+ - * /
--Display employee name and salary
-- And increased_salary after 5000$ raise

SELECT FIRST_NAME,SALARY,
       SALARY + 5000 AS "Increased_Salary"
From EMPLOYEES;

-- And decreased_salary after 2000$ cut
SELECT FIRST_NAME,SALARY,
       SALARY - 2000 AS "Decreased_Salary"
FROM EMPLOYEES;

--And yearly_salary --Multiply by 12

SELECT FIRST_NAME,SALARY,
       SALARY * 12 AS "Yearly_Salary"
FROM EMPLOYEES;

--And weekly_salary --Divide by 4
SELECT FIRST_NAME,SALARY,
       SALARY/4 AS "Weekly_Salary"
FROM EMPLOYEES;

--in one shot!
SELECT FIRST_NAME,SALARY,
       SALARY + 5000 AS "Increased_Salary",
       SALARY - 2000 AS "Decreased_Salary",
       SALARY * 12 AS "Yearly_Salary",
       SALARY/4 AS "Weekly_Salary"
FROM EMPLOYEES;









