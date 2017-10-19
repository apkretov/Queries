USE Timber_2011
BEGIN TRANSACTION

DECLARE @UN_COUNTRY_CODE AS varchar(100)
SET @UN_COUNTRY_CODE = N'499' --Montenegro's code

SELECT COUNT(*) AS 'The number of Montenegro records in Total_Full_McpfeDb_2011 before inserting'
FROM Total_Full_McpfeDb_2011
WHERE UN_COUNTRY_CODE = @UN_COUNTRY_CODE

SELECT COUNT(*) AS 'The number of Montenegro records to be inserted into Total_Full_McpfeDb_2011'
FROM Timber_2011_Montenegro.dbo.Total_Full_McpfeDb_2011 AS T1
LEFT OUTER JOIN Timber_2011.dbo.Total_Full_McpfeDb_2011 AS T2
	ON T1.UN_COUNTRY_CODE = T2.UN_COUNTRY_CODE
	AND T1.YEAR = T2.YEAR
	AND T1.DIMENSION_ID = T2.DIMENSION_ID
WHERE T1.UN_COUNTRY_CODE = @UN_COUNTRY_CODE
	AND T2.DIMENSION_ID IS NULL

INSERT INTO Total_Full_McpfeDb_2011 --Inserting the Montenegro records into Total_Full_McpfeDb_2011
	(UN_COUNTRY_CODE, YEAR, DIMENSION_ID, Value)
	SELECT T1.UN_COUNTRY_CODE,
		T1.YEAR,	
		T1.DIMENSION_ID,
		T1.Value
	FROM Timber_2011_Montenegro.dbo.Total_Full_McpfeDb_2011 AS T1
	LEFT OUTER JOIN Timber_2011.dbo.Total_Full_McpfeDb_2011 AS T2
		ON T1.UN_COUNTRY_CODE = T2.UN_COUNTRY_CODE
		AND T1.YEAR = T2.YEAR
		AND T1.DIMENSION_ID = T2.DIMENSION_ID
	WHERE T1.UN_COUNTRY_CODE = @UN_COUNTRY_CODE
		AND T2.DIMENSION_ID IS NULL

SELECT COUNT(*)  AS 'The number of Montenegro records in Total_Full_McpfeDb_2011 after inserting'
FROM Total_Full_McpfeDb_2011
WHERE UN_COUNTRY_CODE = @UN_COUNTRY_CODE

--ROLLBACK TRANSACTION
COMMIT TRANSACTION