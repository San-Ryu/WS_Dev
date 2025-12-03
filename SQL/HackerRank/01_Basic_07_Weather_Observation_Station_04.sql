/*
https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true

Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

where LAT_N is the northern latitude and LONG_W is the western longitude.

For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', 
there are 2 different city names: 'New York' and 'Bengalaru'. 
The query returns 1, because Total Number of Records - Number of Unique City Names = 3 - 2 = 1
*/

-- SELECT COUNT(A.CITY) FROM (SELECT CITY FROM STATION WHERE 1 = 1) A;
-- SELECT COUNT(B.CITY) FROM (SELECT DISTINCT CITY FROM STATION WHERE 1 = 1) B;

-- KEYWORD : DISTINCT, COUNT, SUBQUERY
-- DB2
SELECT  A - B
FROM    (SELECT COUNT(CITY) as A 
         FROM   (SELECT CITY 
                 FROM   STATION 
                 WHERE  1 = 1))
        , (SELECT   COUNT(CITY) as B 
           FROM (SELECT DISTINCT CITY 
                 FROM   STATION 
                 WHERE  1 = 1));