USE Timber_2011

SELECT *
FROM Groups_2011
WHERE Group_ID IN (
	SELECT DISTINCT Group_ID
	FROM Dimensions_2011
	WHERE ReportingForm_ID IN (5)
)

SELECT *
FROM Topics_2011
WHERE Topic_ID IN (
	SELECT DISTINCT Topic_ID
	FROM Dimensions_2011
	WHERE ReportingForm_ID IN (5)
)

SELECT DISTINCT ReportingForm_ID, Group_ID
FROM     Dimensions_2011
WHERE  (Group_ID BETWEEN 13 AND 15) 
	AND (ReportingForm_ID NOT IN (5, 6))

SELECT  Dimensions_2011.*
FROM     Dimensions_2011
WHERE  (ReportingForm_ID NOT IN (5, 6)) AND (Topic_ID BETWEEN 20 AND 32)