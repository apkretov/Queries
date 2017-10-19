USE Timber_2011
SELECT Total_Full_McpfeDb.UN_COUNTRY_CODE, Countries.COUNTRY_NAME,
	Total_Full_McpfeDb.YEAR, 
	Dimensions_View.ReportingForm_ID, Dimensions_View.ReportingForm_E,
	Dimensions_View.Topic_ID, Dimensions_View.Topic_E,
	Dimensions_View.Group_ID, Dimensions_View.Group_E,
    Dimensions_View.Subgroup_ID, Dimensions_View.SubGroup_E,
	Dimensions_View.DIMENSION_ID, Dimensions_View.TERM_NAME,
	Total_Full_McpfeDb.Value
FROM Total_Full_McpfeDb 
INNER JOIN (
	SELECT Dimensions.DIMENSION_ID, TERM_NAME,
		ReportingForms.ReportingForm_ID, ReportingForm_E,
		Topics.Topic_ID, Topic_E,
		Groups.Group_ID, Group_E,
		SubGroups.SubGroup_ID, SubGroup_E
	FROM Dimensions
	INNER JOIN Topics ON Dimensions.Topic_ID = Topics.Topic_ID
	INNER JOIN Groups ON Dimensions.Group_ID = Groups.Group_ID
	INNER JOIN SubGroups ON Dimensions.SubGroup_ID = SubGroups.SubGroup_ID
	INNER JOIN ReportingForms ON Dimensions.ReportingForm_ID = ReportingForms.ReportingForm_ID
) AS Dimensions_View
	ON Total_Full_McpfeDb.DIMENSION_ID = Dimensions_View.DIMENSION_ID
INNER JOIN Countries
	ON Total_Full_McpfeDb.UN_COUNTRY_CODE = Countries.UN_COUNTRY_CODE

WHERE Total_Full_McpfeDb.UN_COUNTRY_CODE = '499' --AND
--	Dimensions_View.ReportingForm_ID = '1'