SELECT * FROM spacex
WHERE Date BETWEEN '2010-06-04' AND '2017-03-20' 

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'spacex'

SELECT customer, SUM(PAYLOAD_MASS_KG) payload_mass FROM ..spacex
GROUP by customer
ORDER BY payload_mass DESC;

SELECT customer, PAYLOAD_MASS_KG 
FROM ..spacex
WHERE customer = NASA (CRS)

SELECT TOP 5 * FROM ..spacex WHERE Launch_Site LIKE 'CCA%'

SELECT customer, SUM(PAYLOAD_MASS_KG) FROM spacex WHERE customer = 'NASA (CRS)'

SELECT Mission_Outcome, (SELECT COUNT(*) FROM spacex WHERE Mission_Outcome = 'Success')
FROM spacex


--- names of the booster versions that carried the maximum payload mass
DESCRIBE SELECT Booster_Version, MAX(payload_mass) payload_mass
FROM (SELECT Booster_Version, SUM(PAYLOAD_MASS_KG) payload_mass
      FROM spacex
      GROUP BY Booster_Version) tb
GROUP BY Booster_Version
ORDER BY payload_mass DESC

SELECT DISTINCT Booster_Version FROM spacex;

SELECT 


SELECT Date, Booster_Version, Launch_Site, Landing_Outcome
FROM spacex
WHERE Landing_Outcome LIKE '%Success%'
ORDER BY Date 

SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'spacex'

