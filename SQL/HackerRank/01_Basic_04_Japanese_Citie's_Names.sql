/*
https://www.hackerrank.com/challenges/japanese-cities-name/problem?isFullScreen=true

Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
*/

-- KEYWORD : SELECT, WHERE
-- DB2
SELECT  NAME
FROM    CITY 
WHERE   1 = 1 
AND     COUNTRYCODE = 'JPN';

/* Your Output (stdout)

Neyagawa 
Ageo 
Sayama 
Omuta 
Tokuyama  
*/