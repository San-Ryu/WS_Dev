/*
https://www.hackerrank.com/challenges/revising-the-select-query-2/problem?isFullScreen=true

Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
*/

-- KEYWORD : SELECT, WHERE
-- MSSQL
SELECT NAME
FROM CITY
WHERE 1 = 1
AND POPULATION > 120000
AND COUNTRYCODE = 'USA';

/* Your Output (stdout)
Scottsdale 
Corona 
Concord 
Cedar Rapids 
*/

/* Expected Output
Scottsdale
Corona
Concord
Cedar Rapids
*/