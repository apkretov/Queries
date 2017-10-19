USE Timber
SELECT Total_Full_McpfeDb_View.Country, 
	Total_Full_McpfeDb_View.YEAR AS Total_Full_McpfeDb_View_YEAR, 
	/*Total_Full_McpfeDb_View.DIMENSION_ID,*/ 
	Total_Full_McpfeDb_View.TERM_NAME AS Total_Full_McpfeDb_View_TERM_NAME, 
	Total_Full_McpfeDb_View.Value, 
	[mcpfe-2011].COUNTRY_NAME, 
	[mcpfe-2011].TERM_NAME AS [mcpfe-2011_TERM_NAME], 
	[mcpfe-2011].YEAR AS [mcpfe-2011_YEAR], 
	/*[mcpfe-2011].UNIT_NAME,*/ 
	[mcpfe-2011].DATA
FROM [mcpfe-2011]
RIGHT OUTER JOIN /*JOIN FULL OUTER JOIN LEFT OUTER JOIN INNER JOIN*/
	(SELECT Total_Full_McpfeDb.UN_COUNTRY_CODE, 
		Country_Codes.Country, 
		Total_Full_McpfeDb.YEAR, 
		Total_Full_McpfeDb.DIMENSION_ID, 
		Dimensions.TERM_NAME /*AS Total_Full_McpfeDb_View_TERM_NAME*/, 
		Total_Full_McpfeDb.Value
	FROM Total_Full_McpfeDb
	--LEFT OUTER JOIN Dimensions
	--ON Total_Full_McpfeDb.DIMENSION_ID = Dimensions.DIMENSION_ID
	--LEFT OUTER JOIN 
	INNER JOIN 
		(select ValueCode AS DIMENSION_ID, 
			ValueTextS AS TERM_NAME
		from pcaxis.dbo.[value] 
		where valuepool = 'TM_MCPFE_07'
		) AS Dimensions
	ON Total_Full_McpfeDb.DIMENSION_ID = Dimensions.DIMENSION_ID
	INNER JOIN
		(SELECT ValueTextS AS Country, 
			ValueCode AS Country_code
		FROM PCAxis.dbo.[value]
		WHERE valuepool = 'country'
		) AS Country_Codes
	ON Total_Full_McpfeDb.UN_COUNTRY_CODE = Country_Codes.Country_code) AS Total_Full_McpfeDb_View
ON [mcpfe-2011].COUNTRY_NAME = Total_Full_McpfeDb_View.Country 
	AND [mcpfe-2011].YEAR = Total_Full_McpfeDb_View.YEAR 
	AND [mcpfe-2011].TERM_NAME = Total_Full_McpfeDb_View.TERM_NAME
--WHERE Country IS NOT NULL AND Total_Full_McpfeDb_View.TERM_NAME IS NOT NULL
ORDER BY Total_Full_McpfeDb_View_TERM_NAME

SELECT COUNTRY_NAME, TERM_NAME, YEAR, DATA
FROM [mcpfe-2011]
WHERE /*TERM_NAME LIKE '%Bird%' OR*/ TERM_NAME LIKE '%Extinct%'
ORDER BY TERM_NAME