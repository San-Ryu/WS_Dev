/*
https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true

Generate the following two result sets:

1. Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
2. Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:

"There are a total of [occupation_count] [occupation]s.""

where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

Note: There will be at least two entries in the table for each type of occupation.
*/

-- KEYWORD : CONCAT 또는 ||, LEFT, LOWER
-- MSSQL
SELECT CONCAT(NAME, '(', LEFT(OCCUPATION, 1), ')')
FROM OCCUPATIONS
ORDER BY NAME

SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(OCCUPATION), 's.')
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(NAME) asc, OCCUPATION asc



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