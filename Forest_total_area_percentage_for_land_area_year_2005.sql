USE Timber
SELECT Land_Area.Country_code AS Country_code, 
	Land_Area.Country AS Country, 
	Total_Full_McpfeDb_Dimensions.Value / Land_Area.Data * 100 AS Percentage
FROM (
	SELECT UN_COUNTRY_CODE AS Country_code, 
		Value * 10 AS Value
	FROM dbo.Total_Full_McpfeDb_Dimensions
	WHERE Group_ID IN (SELECT ValueCode FROM PCAxis.dbo.VSValue WHERE ValueSet = 'TM_Form1_Group')
		AND Topic_ID IN (SELECT ValueCode FROM PCAxis.dbo.VSValue WHERE ValueSet = 'TM_Form1_Topic')
		AND UN_COUNTRY_CODE IN (SELECT ValueCode FROM PCAxis.dbo.VSValue WHERE ValueSet = 'TMCountries')
		AND ReportingForm_ID = 1
		AND Topic_ID = 4
		AND Group_ID = 62
		AND Year = '2005'
	) AS Total_Full_McpfeDb_Dimensions 
INNER JOIN (
	SELECT Country, 
		Country_code, 
		Data
	FROM dbo.Land_Area
	WHERE Year = '2005'
	) AS Land_Area 
	ON Total_Full_McpfeDb_Dimensions.Country_code = Land_Area.Country_code
ORDER BY Percentage