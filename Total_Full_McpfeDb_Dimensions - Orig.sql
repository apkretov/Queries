USE Timber
SELECT Total_Full_McpfeDb.UN_COUNTRY_CODE, 
	Total_Full_McpfeDb.YEAR, 
	Dimensions.ReportingForm_ID, 
	Dimensions.Topic_ID, 
	Dimensions.Group_ID, 
    Dimensions.Subgroup_ID, 
	Total_Full_McpfeDb.Value
FROM Total_Full_McpfeDb 
INNER JOIN Dimensions 
	ON Total_Full_McpfeDb.DIMENSION_ID = Dimensions.DIMENSION_ID
