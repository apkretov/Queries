-- PC-Axis 2006 Area of forest and other wooded land [1000 ha] (MCPFE 1.1)
SELECT Country = UN_COUNTRY_CODE,
	YEAR /*AS Time*/,
	Topic_ID /*AS TMAvailWoodSupply*/,
	Group_ID /*AS TMForestType*/,
	VALUE /*AS DATA*/
FROM Timber.dbo.Total_Full_McpfeDb_Dimensions
WHERE Group_ID IN (SELECT ValueCode FROM PCAxis.dbo.VSValue WHERE ValueSet = 'TM_Form1_Group') 
	AND Topic_ID IN (SELECT ValueCode FROM PCAxis.dbo.VSValue WHERE ValueSet = 'TM_Form1_Topic')
	AND UN_COUNTRY_CODE IN (SELECT ValueCode FROM PCAxis.dbo.VSValue WHERE ValueSet = 'TMCountries')
	AND ReportingForm_ID = 1
	
	AND UN_COUNTRY_CODE = '008'
	AND Topic_ID = '4'
	AND Group_ID = '62'