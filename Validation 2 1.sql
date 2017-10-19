USE Timber;
DECLARE @STATE_STRUCTURE_NAME nvarchar(255);
SELECT @STATE_STRUCTURE_NAME = N'A6.8';

SELECT mcpfe_2011_View_2.STATE_STRUCTURE_NAME, mcpfe_2011_View_2.TERM_NAME, mcpfe_2011_View_2.Sum_of_DATA_float,
	Total_Full_McpfeDb_2011_View.STATE_STRUCTURE_NAME, Total_Full_McpfeDb_2011_View.TERM_NAME, Total_Full_McpfeDb_2011_View.Sum_of_Value,
	( CAST( (mcpfe_2011_View_2.Sum_of_DATA_float - Total_Full_McpfeDb_2011_View.Sum_of_Value) AS int ) * 1000 ) AS Difference
FROM (
	SELECT mcpfe_2011_View_1.STATE_STRUCTURE_NAME, mcpfe_2011_View_1.TERM_NAME, SUM(mcpfe_2011_View_1.DATA_float) AS Sum_of_DATA_float
	FROM (
		SELECT STATE_STRUCTURE_NAME, TERM_NAME, CAST( REPLACE(DATA, ',', '.') AS float) AS DATA_float
		FROM [mcpfe-2011]
		WHERE ISNUMERIC (DATA) = 1
			AND RTRIM(LTRIM(DATA))!='.' AND RTRIM(LTRIM(DATA))!='-'
			--AND STATE_STRUCTURE_NAME = @STATE_STRUCTURE_NAME
			--AND STATE_STRUCTURE_NAME LIKE (@STATE_STRUCTURE_NAME + '%')
	) AS mcpfe_2011_View_1
	GROUP BY mcpfe_2011_View_1.STATE_STRUCTURE_NAME, mcpfe_2011_View_1.TERM_NAME
) AS mcpfe_2011_View_2
LEFT OUTER JOIN ( -- 977
--INNER JOIN ( -- 862 861
--RIGHT OUTER JOIN ( -- 865
	SELECT	Dimensions_2011_View.STATE_STRUCTURE_NAME, Dimensions_2011_View.TERM_NAME, SUM(Total_Full_McpfeDb_2011.Value) AS Sum_of_Value
	FROM Total_Full_McpfeDb_2011 
	INNER JOIN (
		SELECT Dimensions_2011.DIMENSION_ID, Dimensions_2011.TERM_NAME,	ReportingForms_2011.STATE_STRUCTURE_NAME
		FROM Dimensions_2011
		INNER JOIN ReportingForms_2011 ON Dimensions_2011.ReportingForm_ID = ReportingForms_2011.ReportingForm_ID
	) AS Dimensions_2011_View ON Total_Full_McpfeDb_2011.DIMENSION_ID = Dimensions_2011_View.DIMENSION_ID
	INNER JOIN Countries ON Total_Full_McpfeDb_2011.UN_COUNTRY_CODE = Countries.UN_COUNTRY_CODE
	GROUP BY Dimensions_2011_View.STATE_STRUCTURE_NAME,	Dimensions_2011_View.TERM_NAME
	--HAVING Dimensions_2011_View.STATE_STRUCTURE_NAME = @STATE_STRUCTURE_NAME
	--HAVING Dimensions_2011_View.STATE_STRUCTURE_NAME LIKE (@STATE_STRUCTURE_NAME + '%')
) AS Total_Full_McpfeDb_2011_View
ON mcpfe_2011_View_2.STATE_STRUCTURE_NAME = Total_Full_McpfeDb_2011_View.STATE_STRUCTURE_NAME 
	AND mcpfe_2011_View_2.TERM_NAME = Total_Full_McpfeDb_2011_View.TERM_NAME
--WHERE mcpfe_2011_View_2.STATE_STRUCTURE_NAME IS NULL
--	OR mcpfe_2011_View_2.TERM_NAME IS NULL
--WHERE Total_Full_McpfeDb_2011_View.STATE_STRUCTURE_NAME IS NULL
--	OR Total_Full_McpfeDb_2011_View.TERM_NAME IS NULL
--	OR (CAST( (mcpfe_2011_View_2.Sum_of_DATA_float - Total_Full_McpfeDb_2011_View.Sum_of_Value) AS int ) * 1000) != 0
ORDER BY mcpfe_2011_View_2.STATE_STRUCTURE_NAME, mcpfe_2011_View_2.TERM_NAME
--ORDER BY Difference ASC
--ORDER BY Difference DESC
--ORDER BY mcpfe_2011_View_2.Sum_of_DATA_float ASC