SELECT ValueTextS AS COUNTRY_NAME, 
	ValueCode AS UN_COUNTRY_CODE
FROM PCAxis.dbo.[value]
WHERE valuepool = N'country'