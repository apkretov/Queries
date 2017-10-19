USE PCAxis
GO
SELECT VSValue.ValueCode,
	[Value].ValueTextS
	FROM VSValue 
INNER JOIN [Value]
	ON VSValue.ValueCode = [Value].ValueCode
		AND VSValue.ValuePool = [Value].ValuePool
WHERE VSValue.ValueSet = 'TM_Form8pl'
GO