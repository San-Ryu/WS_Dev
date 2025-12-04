/*
https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true

Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
*/

-- KEYWORD : SELECT, WHERE
-- MSSQL
SELECT *
FROM CITY
WHERE 1 = 1
AND POPULATION > 100000
AND COUNTRYCODE = 'USA'

/* Your Output (stdout)
3878 Scottsdale USA Arizona 202705
3965 Corona USA California 124966
3973 Concord USA California 121780
3977 Cedar Rapids USA Iowa 120758
3982 Coral Springs USA Florida 117549
*/

/* Expected Output
3878 Scottsdale USA Arizona 202705 
3965 Corona USA California 124966 
3973 Concord USA California 121780 
3977 Cedar Rapids USA Iowa 120758 
3982 Coral Springs USA Florida 117549 
 */