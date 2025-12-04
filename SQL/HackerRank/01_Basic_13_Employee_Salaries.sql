/*
https://www.hackerrank.com/challenges/salary-of-employees/problem?isFullScreen=true

Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
*/

-- KEYWORD : SELECT, WHERE, ORDER BY
-- MSSQL
SELECT NAME
FROM EMPLOYEE
WHERE 1 = 1
AND SALARY > 2000
AND MONTHS < 10
ORDER BY EMPLOYEE_ID ASC

/* Your Output (stdout)
Rose 
Patrick 
Lisa 
Amy 
Pamela 
Jennifer 
Julia 
Kevin 
Paul 
Donna 
Michelle 
Christina 
Brandon 
Joseph 
Jesse 
Paula 
Louise 
Evelyn 
Emily 
Jonathan {-truncated-}
 */