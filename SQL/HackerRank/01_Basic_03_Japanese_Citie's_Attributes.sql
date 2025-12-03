/*
https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=true

Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
*/

-- KEYWORD : SELECT, WHERE
-- DB2
SELECT  * 
FROM    CITY 
WHERE   1 = 1 
AND     COUNTRYCODE = 'JPN';

/* Your Output (stdout)

1613 Neyagawa JPN Osaka 257315 
1630 Ageo JPN Saitama 209442 
1661 Sayama JPN Saitama 162472 
1681 Omuta JPN Fukuoka 142889 
1739 Tokuyama JPN Yamaguchi 107078 
*/