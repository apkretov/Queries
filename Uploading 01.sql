USE Timber

SELECT COUNT(*) AS COUNT_UN_COUNTRY_CODE
FROM
	(SELECT UN_COUNTRY_CODE
	FROM Total_Full_McpfeDb
	GROUP BY UN_COUNTRY_CODE) AS Un_Country_Codes

SELECT COUNT(*) AS COUNT_Country_Codes
FROM
	(SELECT Country,
		Country_code
	FROM Land_Area
	GROUP BY Country, Country_code
	) AS Country_Codes