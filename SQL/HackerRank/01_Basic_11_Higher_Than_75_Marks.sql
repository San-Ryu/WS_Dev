/*
https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true

Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.
-- Sample Input
Ashley, 81
Julia, 75
Belvet, 76

-- Sample Output
Ashley
Julia
Belvet

-- Explanation
Only Ashley, Julia, and Belvet have Marks > . If you look at the last three characters of each of their names, there are no duplicates and 'ley' < 'lia' < 'vet'.
*/

-- KEYWORD : SubQuery, SUBSTRING/LEFT/RIGHT, ORDER BY
-- MSSQL
SELECT  NAME
FROM    (SELECT NAME, ID, RIGHT(NAME, 3) AS RName, MARKS
         FROM STUDENTS
         WHERE 1 = 1
         AND MARKS > 75) as A
ORDER BY RName, ID;

/* Your Output (stdout)
Stuart
Kristeen
Christene
Amina
Aamina
Priya
Heraldo
Scarlet
Julia
Salma
Britney
Priyanka
Samantha
Vivek
Belvet
Devil
Evil
 */