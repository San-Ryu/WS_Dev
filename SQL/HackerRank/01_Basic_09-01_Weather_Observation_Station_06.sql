/*
https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true

Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

-- KEYWORD : DISTINCT, LIKE (_, %, [, ])
-- MSSQL
SELECT DISTINCT CITY
FROM STATION
WHERE 1 = 1
AND (CITY LIKE 'a%')
    or (CITY LIKE 'e%')
    or (CITY LIKE 'i%')
    or (CITY LIKE 'o%')
    or (CITY LIKE 'u%')

/* Your Output (stdout)
Arlington
Albany
Upperco
Aguanga
Odin
East China
Algonac
Onaway
Irvington
Arrowsmith
Udall
Oakfield
Elkton
East Irvine
Amo
Alanson
Eleele
Auburn
Oconee
Amazonia
Aliso Viejo
Andersonville
Eros
Arkadelphia
Eriline
Edgewater
East Haddam
Eastlake
Addison
Everton
Eustis
Arispe
Union Star
Ottertail
Ermine
Albion
Athens
Eufaula
Osage City
Andover
Osborne
Elm Grove
Atlantic Mine
Oshtemo
Archie
Olmitz
Allerton
Equality
Alpine
Ojai
Orange Park
Urbana
Ukiah
Alba
Esmond
Eureka Springs
Eskridge
Ozona
Orange City
Effingham
Alton
Agency
Anthony
Emmett
Acme
 */