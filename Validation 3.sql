USE Timber;

SELECT Dimensions_2011_View.ReportingForm_E,
	COUNT(Dimensions_2011_View.ReportingForm_ID) AS Table_Dimensions
FROM (
	SELECT ReportingForms_2011.ReportingForm_ID AS ReportingForm_ID, ReportingForms_2011.ReportingForm_E AS ReportingForm_E
	FROM ReportingForms_2011
	INNER JOIN Dimensions_2011 ON ReportingForms_2011.ReportingForm_ID = Dimensions_2011.ReportingForm_ID
	) AS Dimensions_2011_View
GROUP BY Dimensions_2011_View.ReportingForm_E
ORDER BY Dimensions_2011_View.ReportingForm_E;

SELECT * 
FROM Total_Full_McpfeDb_2011
WHERE DIMENSION_ID NOT IN (SELECT DIMENSION_ID FROM Dimensions_2011);

SELECT * FROM Dimensions_2011
WHERE DIMENSION_ID NOT IN (SELECT DISTINCT DIMENSION_ID	FROM Total_Full_McpfeDb_2011);