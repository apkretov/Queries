USE Timber
SELECT d.Country, 
	a_1.Country AS Expr1, 
	d.VALUE / a_1.Data * 100 AS Expr2
FROM (
	SELECT UN_COUNTRY_CODE AS Country, 
		YEAR AS Time, 
		Topic_ID AS TMAvailWoodSupply, 
		Group_ID AS TMForestType, 
		Value * 10 AS VALUE
	FROM dbo.Total_Full_McpfeDb_Dimensions
	WHERE (
		Group_ID IN (
			SELECT ValueCode
			FROM PCAxis.dbo.VSValue
			WHERE (ValueSet = 'TM_Form1_Group')
			)
		) 
		AND (
			Topic_ID IN (
				SELECT ValueCode
				FROM   PCAxis.dbo.VSValue AS VSValue_2
				WHERE (ValueSet = 'TM_Form1_Topic')
				)
			) 
		AND (
			UN_COUNTRY_CODE IN (
				SELECT ValueCode
				FROM PCAxis.dbo.VSValue AS VSValue_1
				WHERE (ValueSet = 'TMCountries')
				)
			) 
	AND (ReportingForm_ID = 1) 
	AND (Topic_ID = 4) 
	AND (Group_ID = 62) 
	AND (YEAR = '2005')
) AS d 
INNER JOIN (
	SELECT Country, 
		Country_code, 
		Data, 
		Year
    FROM   dbo.Land_Area AS a
	WHERE (Year = '2005')
	) AS a_1 
	ON d.Country = a_1.Country_code