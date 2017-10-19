--use timber_2011_09_15
use timber

select 
R.* , 
R.[VALUE],
CAST(O1.DATA_VARCHAR_1 AS FLOAT) AS RESULT, 
R.[VALUE]-CAST(O1.DATA_VARCHAR_1 AS FLOAT) AS DIFF 
from 
(

SELECT 
	RTRIM(LTRIM(RIGHT(LEFT(REPORTINGFORM_E, CHARINDEX(':', REPORTINGFORM_E)-1), LEN(LEFT(REPORTINGFORM_E, CHARINDEX(':', REPORTINGFORM_E)-1))-CHARINDEX(' ', LEFT(REPORTINGFORM_E, CHARINDEX(':', REPORTINGFORM_E)-1))))) STATE_STRUCTURE_NAME_1,
	Total_Full_McpfeDb_2011.UN_COUNTRY_CODE, Countries.COUNTRY_NAME,
	Total_Full_McpfeDb_2011.YEAR, 
	Dimensions_2011_View.ReportingForm_ID, Dimensions_2011_View.ReportingForm_E,
	Dimensions_2011_View.Topic_ID, Dimensions_2011_View.Topic_E,
	Dimensions_2011_View.Group_ID, Dimensions_2011_View.Group_E,
    Dimensions_2011_View.Subgroup_ID, Dimensions_2011_View.SubGroup_E,
	Dimensions_2011_View.DIMENSION_ID, Dimensions_2011_View.TERM_NAME,
	Total_Full_McpfeDb_2011.Value
FROM Total_Full_McpfeDb_2011 
INNER JOIN (
	SELECT Dimensions_2011.DIMENSION_ID, TERM_NAME,
		ReportingForms_2011.ReportingForm_ID, ReportingForm_E,
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

) as r,


(



SELECT
	* 
FROM 
(
SELECT *, 
	CASE LEFT(Z.LEFTCOL, 2)
	WHEN '-.' THEN RIGHTCOL
	ELSE LEFTCOL
	END AS DATA_VARCHAR_1		
FROM 
(
	select *, RIGHT(STATE_STRUCTURE_NAME, LEN(STATE_STRUCTURE_NAME)-1) AS STATE_STRUCTURE_NAME_1,
		CASE LEFT(DATA_VARCHAR,1) 
		WHEN '.' THEN '0' + DATA_VARCHAR 
		ELSE DATA_VARCHAR
		END AS LEFTCOL,
		CASE LEFT(DATA_VARCHAR,2)
		WHEN '-.' THEN '-0.' + RIGHT(DATA_VARCHAR, LEN(DATA_VARCHAR)-2)
		ELSE DATA_VARCHAR
		END AS RIGHTCOL
		
	from 
		(

		SELECT 
			COUNTRY_NAME,                                                                                                                                                                                                                                                    
			ISO2,                                                                                                                                                                                                                                                            
			STATE_STRUCTURE_NAME,                                                                                                                                                                                                                                            
			TERM_NAME,                                                                                                                                                                                                                                                       
			TERM_NAME_Orig,                                                                                                                                                                                                                                                  
			[YEAR],                                                                                                 
			UNIT_NAME,                                                                                                                                                                                                                                                       
			DATA,                                                                                                                                                                                                                                                            
			DATA_Changed,                                                                                                                                                                                                                                                    
			Uploaded,
			REPLACE(DATA_VARCHAR, ',', '.')  DATA_VARCHAR
		FROM dbo.[mcpfe-2011] 
		
		) AS U
	where isnumeric(DATA_VARCHAR)=1 AND
	RTRIM(LTRIM(DATA_VARCHAR))!='.' AND RTRIM(LTRIM(DATA_VARCHAR))!='-' 
) AS Z
) AS P


) as o1
where 


r.COUNTRY_NAME = O1.COUNTRY_NAME AND
r.[YEAR]=O1.[YEAR]  AND
r.STATE_STRUCTURE_NAME_1=O1.STATE_STRUCTURE_NAME_1  AND
r.[TERM_NAME]=O1.[TERM_NAME]

AND ReportingForm_ID = 13

ORDER BY R.[VALUE]-CAST(O1.DATA_VARCHAR_1 AS FLOAT) ASC