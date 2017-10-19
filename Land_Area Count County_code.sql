USE Timber
SELECT Country, --Year,
	COUNT (Country_code) AS COUNT_Country_code
FROM Land_Area
--WHERE Country_code = 008
GROUP BY Country--, Year
ORDER BY Country--, Year