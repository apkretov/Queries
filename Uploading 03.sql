USE Timber

SELECT Total_Full_McpfeDb.UN_COUNTRY_CODE,
	Country_Codes.Country,
	YEAR,
	Dimensions.TERM_NAME,
	Value
FROM Total_Full_McpfeDb
INNER JOIN Dimensions
	ON Total_Full_McpfeDb.UN_COUNTRY_CODE = Dimensions.DIMENSION_ID
LEFT OUTER JOIN
	(SELECT Country,
		Country_code
	FROM Land_Area
	GROUP BY Country, Country_code
	) AS Country_Codes
ON Total_Full_McpfeDb.UN_COUNTRY_CODE = Country_Codes.Country_code
WHERE Country_Codes.Country IS NULL