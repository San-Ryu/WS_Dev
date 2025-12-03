/*
https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true

Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

where LAT_N is the northern latitude and LONG_W is the western longitude.

-- Sample Input
For example, CITY has four entries: DEF, ABC, PQRS and WXY.

-- Sample Output
ABC 3
PQRS 4

-- Explanation
When ordered alphabetically, the CITY names are listed as ABC, DEF, PQRS, and WXY, with lengths 3, 3, 4 and 3. The longest name is PQRS, but there are 3 options for shortest named city. Choose ABC, because it comes first alphabetically.

-- Note
You can write two separate queries to get the desired output. It need not be a single query.
*/

-- KEYWORD : TOP, ORDER, ASC 및 DESC
-- MSSQL
-- Query for the city with the shortest name
SELECT      * 
FROM  (SELECT     TOP 1 CITY, LEN(CITY) AS L_CITY 
       FROM       STATION 
       ORDER BY   LEN(CITY) ASC, CITY ASC) AS A
UNION ALL
SELECT * 
FROM  (SELECT      TOP 1 CITY, LEN(CITY) AS L_CITY 
       FROM STATION 
       ORDER BY LEN(CITY) DESC, CITY ASC) AS B;

/* Your Output (stdout)
Amo 3
Marine On Saint Croix 21
 */



-----------------------------------------------------------
 -- Query for the city with the shortest name
SELECT CITY, LEN(CITY) AS L_CITY 
FROM (
    SELECT TOP 1 CITY, LEN(CITY) AS L_CITY 
    FROM STATION 
    ORDER BY LEN(CITY) ASC, CITY ASC
) AS shortest

UNION ALL

-- Query for the city with the longest name
SELECT CITY, LEN(CITY) AS L_CITY 
FROM (
    SELECT TOP 1 CITY, LEN(CITY) AS L_CITY 
    FROM STATION 
    ORDER BY LEN(CITY) DESC, CITY ASC
) AS longest;