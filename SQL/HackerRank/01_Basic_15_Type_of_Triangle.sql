/*
https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true

Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

- Equilateral: It's a triangle with  sides of equal length.
- Isosceles: It's a triangle with  sides of equal length.
- Scalene: It's a triangle with  sides of differing lengths.
- Not A Triangle: The given values of A, B, and C don't form a triangle.

*/

/* Ref
https://woogie-db.tistory.com/37
*/

-- KEYWORD : CONCAT 또는 ||, LEFT, LOWER
-- MSSQL
SELECT CASE WHEN (LEN01 + LEN02 > LEN_Max) AND (LEN01 = LEN02) AND (LEN01 = LEN_Max) AND (LEN02 = LEN_Max) THEN 'Equilateral'
            WHEN (LEN01 + LEN02 > LEN_Max) AND (LEN01 = LEN02) AND (LEN02 != LEN_Max) AND (LEN01 != LEN_Max) THEN 'Isosceles'
            WHEN (LEN01 + LEN02 > LEN_Max) AND (LEN01 != LEN02) AND (LEN02 != LEN_Max) AND (LEN01 != LEN_Max) THEN 'Scalene'
            ELSE 'Not A Triangle'
            END AS T_Type
FROM (SELECT  A, B, C
                , GREATEST(A, B, C) AS LEN_Max
                , CASE WHEN A = GREATEST(A, B, C) THEN B
                    WHEN B = GREATEST(A, B, C) THEN A
                ELSE A
                END AS LEN01
                , CASE WHEN A = GREATEST(A, B, C) THEN C
                    WHEN B = GREATEST(A, B, C) THEN C
                ELSE B
                END AS LEN02
        FROM    TRIANGLES) AS A



-- 쿼리 01. 오답 부분
-- SELECT CONCAT('(', LEFT(OCCUPATION, 1), ')', SUBSTRING(OCCUPATION, 2, LEN(OCCUPATION)))
-- FROM OCCUPATIONS
-- GROUP BY OCCUPATION
-- ORDER BY OCCUPATION



/* Your Output (stdout)
Aamina(D)
Ashley(P)
Belvet(P)
Britney(P)
Christeen(S)
Eve(A)
Jane(S)
Jennifer(A)
Jenny(S)
Julia(D)
Ketty(A)
Kristeen(S)
Maria(P)
Meera(P)
Naomi(P)
Priya(D)
Priyanka(P)
Samantha(A)
There are a total of 3 doctors.
There are a total of 4 actors.
There are a total of 4 singers.
There are a total of 7 professors.
*/

/* Expected Output
*/