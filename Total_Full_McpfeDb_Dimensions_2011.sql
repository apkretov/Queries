USE Timber_2011
SELECT /*Total_Full_McpfeDb_2011.UN_COUNTRY_CODE,*/ Countries.COUNTRY_NAME,
	Total_Full_McpfeDb_2011.YEAR, 
	/*Dimensions_2011_View.ReportingForm_ID, Dimensions_2011_View.ReportingForm_E,*/ Dimensions_2011_View.STATE_STRUCTURE_NAME,
	Dimensions_2011_View.Topic_ID, Dimensions_2011_View.Topic_E,
	/*Dimensions_2011_View.Group_ID,*/ Dimensions_2011_View.Group_E,
    /*Dimensions_2011_View.Subgroup_ID, Dimensions_2011_View.SubGroup_E,*/
	Dimensions_2011_View.DIMENSION_ID, Dimensions_2011_View.TERM_NAME,
	Total_Full_McpfeDb_2011.Value
FROM Total_Full_McpfeDb_2011 
INNER JOIN (
	SELECT Dimensions_2011.DIMENSION_ID, TERM_NAME,
		ReportingForms_2011.ReportingForm_ID, ReportingForms_2011.ReportingForm_E, ReportingForms_2011.STATE_STRUCTURE_NAME,
		Topics_2011.Topic_ID, Topic_E,
		Groups_2011.Group_ID, Group_E,
		SubGroups_2011.SubGroup_ID, SubGroup_E
	FROM Dimensions_2011
	INNER JOIN Topics_2011 ON Dimensions_2011.Topic_ID = Topics_2011.Topic_ID
	INNER JOIN Groups_2011 ON Dimensions_2011.Group_ID = Groups_2011.Group_ID
	INNER JOIN SubGroups_2011 ON Dimensions_2011.SubGroup_ID = SubGroups_2011.SubGroup_ID
	INNER JOIN ReportingForms_2011 ON Dimensions_2011.ReportingForm_ID = ReportingForms_2011.ReportingForm_ID
) AS Dimensions_2011_View
	ON Total_Full_McpfeDb_2011.DIMENSION_ID = Dimensions_2011_View.DIMENSION_ID
INNER JOIN Countries
	ON Total_Full_McpfeDb_2011.UN_COUNTRY_CODE = Countries.UN_COUNTRY_CODE
WHERE Total_Full_McpfeDb_2011.UN_COUNTRY_CODE = N'499'
	AND Dimensions_2011_View.STATE_STRUCTURE_NAME = N'F6.11'
	AND Total_Full_McpfeDb_2011.YEAR = N'2005'