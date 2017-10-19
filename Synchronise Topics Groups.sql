USE Timber_2011
GO
SELECT Timber_Rus_Temp.dbo.Topics_2011.Topic_ID,
	Timber_Rus_Temp.dbo.Topics_2011.Topic_E, Timber_2011.dbo.Topics_2011.Topic_E,
	Timber_Rus_Temp.dbo.Topics_2011.Topic_E_Rus, Timber_2011.dbo.Topics_2011.Topic_E_Rus
FROM Timber_Rus_Temp.dbo.Topics_2011
INNER JOIN Timber_2011.dbo.Topics_2011
	ON Timber_Rus_Temp.dbo.Topics_2011.Topic_ID = Timber_2011.dbo.Topics_2011.Topic_ID
WHERE Timber_Rus_Temp.dbo.Topics_2011.Topic_E != Timber_2011.dbo.Topics_2011.Topic_E
	OR Timber_Rus_Temp.dbo.Topics_2011.Topic_E_Rus != Timber_2011.dbo.Topics_2011.Topic_E_Rus

SELECT Timber_Rus_Temp.dbo.Groups_2011.Group_ID,
	Timber_Rus_Temp.dbo.Groups_2011.Group_E, Timber_2011.dbo.Groups_2011.Group_E,
	Timber_Rus_Temp.dbo.Groups_2011.Group_E_Rus, Timber_2011.dbo.Groups_2011.Group_E_Rus
FROM Timber_Rus_Temp.dbo.Groups_2011
INNER JOIN Timber_2011.dbo.Groups_2011
	ON Timber_Rus_Temp.dbo.Groups_2011.Group_ID = Timber_2011.dbo.Groups_2011.Group_ID
WHERE Timber_Rus_Temp.dbo.Groups_2011.Group_E != Timber_2011.dbo.Groups_2011.Group_E
	OR Timber_Rus_Temp.dbo.Groups_2011.Group_E_Rus != Timber_2011.dbo.Groups_2011.Group_E_Rus