/*
https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=true

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

-- KEYWORD : DISTINCT, LIKE (_, %, [, ])
-- MSSQL
SELECT DISTINCT CITY
FROM STATION
WHERE 1 = 1
AND ((CITY LIKE 'a%')
    or (CITY LIKE 'e%')
    or (CITY LIKE 'i%')
    or (CITY LIKE 'o%')
    or (CITY LIKE 'u%'))
AND ((CITY LIKE '%a')
    or (CITY LIKE '%e')
    or (CITY LIKE '%i')
    or (CITY LIKE '%o')
    or (CITY LIKE '%u'))

/* Your Output (stdout)
Acme
Aguanga
Alba
Aliso Viejo
Alpine
Amazonia
Amo
Andersonville
Archie
Arispe
Arkadelphia
Atlantic Mine
East China
East Irvine
Eastlake
Eleele
Elm Grove
Eriline
Ermine
Eskridge
Eufaula
Oconee
Ojai
Osborne
Oshtemo
Ozona
Upperco
Urbana
 */