USE Timber

SELECT Country_Codes.Country--, 
	--Total_Full_McpfeDb_Sel.DIMENSION_ID
FROM
	(SELECT UN_COUNTRY_CODE
	FROM Total_Full_McpfeDb
	GROUP BY UN_COUNTRY_CODE) AS Total_Full_McpfeDb_Sel
RIGHT OUTER JOIN 
	(SELECT Country,
		Country_code
	FROM Land_Area
	GROUP BY Country, Country_code
	) AS Country_Codes
ON Total_Full_McpfeDb_Sel.UN_COUNTRY_CODE = Country_Codes.Country_code
