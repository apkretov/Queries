-- Craate a Country_Codes table for the UN countries
USE Timber
GO

--SELECT ValueCode AS UN_COUNTRY_CODE, --Create the table
--	ValueTextS AS COUNTRY_NAME
--INTO Countries
--FROM PCAxis.dbo.[value]
--WHERE valuepool = N'country'
--GO

INSERT Countries
	SELECT ValueCode AS UN_COUNTRY_CODE, --Create the table
		ValueTextS AS COUNTRY_NAME
	FROM PCAxis.dbo.[value]
	WHERE valuepool = N'country'
GO

SELECT * --View the results
FROM Countries
GO