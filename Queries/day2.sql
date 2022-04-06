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




