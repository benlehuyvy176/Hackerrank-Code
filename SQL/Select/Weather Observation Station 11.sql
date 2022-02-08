--Task
/*
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+

*/

--Solution

SELECT DISTINCT CITY FROM STATION WHERE substr(CITY,1,1) NOT IN ('A','I','U','E','O') OR substr(CITY,length(CITY),1) NOT IN ('a','i','u','e','o');

-- Reference solution
SELECT DISTINCT CITY 
FROM STATION
WHERE (NOT(CITY LIKE 'A%' OR CITY LIKE 'I%' OR CITY LIKE 'U%' OR CITY LIKE 'E%'OR CITY LIKE 'O%')) OR (NOT(CITY LIKE '%a' OR CITY LIKE '%i' OR CITY LIKE '%u' OR CITY LIKE '%e'OR CITY LIKE '%o'))
ORDER BY CITY;
