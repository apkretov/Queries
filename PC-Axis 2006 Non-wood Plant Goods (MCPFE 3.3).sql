-- PC-Axis 2006 Value and Quantity of Marketed Non-wood Plant Goods from Forest and Other Wooded Land (MCPFE 3.3)
SELECT Country = UN_COUNTRY_CODE,
	YEAR /*AS Time*/,
	DIMENSION_ID /*AS TMPlantGoods*/,
	VALUE /*AS DATA*/
FROM Timber.dbo.Total_Full_McpfeDb
WHERE DIMENSION_ID IN (SELECT ValueCode FROM PCAxis.dbo.VSValue WHERE ValueSet = 'TM_Form8pl')
	AND UN_COUNTRY_CODE IN (SELECT ValueCode FROM PCAxis.dbo.VSValue WHERE ValueSet = 'TMCountries')
	
	--AND UN_COUNTRY_CODE = '008'
