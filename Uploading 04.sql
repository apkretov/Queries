USE Timber

SELECT Total_Full_McpfeDb.UN_COUNTRY_CODE,
	Country_Codes.Country,
	YEAR,
	Total_Full_McpfeDb.DIMENSION_ID,
	Dimensions.TERM_NAME,
	Value
FROM Total_Full_McpfeDb
LEFT OUTER JOIN Dimensions
	ON Total_Full_McpfeDb.DIMENSION_ID = Dimensions.DIMENSION_ID
LEFT OUTER JOIN
	(SELECT Country,
		Country_code
	FROM Land_Area
	GROUP BY Country, Country_code
	) AS Country_Codes
ON Total_Full_McpfeDb.UN_COUNTRY_CODE = Country_Codes.Country_code
WHERE Country_Codes.Country IS NULL
	OR Dimensions.DIMENSION_ID IS NULL