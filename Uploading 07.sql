USE Timber
SELECT Total_Full_McpfeDb.*,
	bkp_Total_Full_McpfeDb_20100923.*
FROM Total_Full_McpfeDb
--INNER JOIN bkp_Total_Full_McpfeDb_20100923
--LEFT OUTER JOIN bkp_Total_Full_McpfeDb_20100923
RIGHT OUTER JOIN bkp_Total_Full_McpfeDb_20100923
ON Total_Full_McpfeDb.UN_COUNTRY_CODE = bkp_Total_Full_McpfeDb_20100923.UN_COUNTRY_CODE
	AND Total_Full_McpfeDb.YEAR = bkp_Total_Full_McpfeDb_20100923.YEAR
	AND Total_Full_McpfeDb.DIMENSION_ID = bkp_Total_Full_McpfeDb_20100923.DIMENSION_ID
WHERE Total_Full_McpfeDb.UN_COUNTRY_CODE IS NULL