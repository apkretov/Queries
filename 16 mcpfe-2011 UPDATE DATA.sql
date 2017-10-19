USE Timber
GO
BEGIN TRANSACTION

SELECT *
FROM [mcpfe-2011]
WHERE (STATE_STRUCTURE_NAME = N'A4.6a'
		OR STATE_STRUCTURE_NAME = N'A6.7'
		OR STATE_STRUCTURE_NAME LIKE N'A6.8%'
	)
	AND DATA IS NULL

UPDATE [mcpfe-2011]
SET DATA = N'-'
WHERE (STATE_STRUCTURE_NAME = N'A4.6a'
		OR STATE_STRUCTURE_NAME = N'A6.7'
		OR STATE_STRUCTURE_NAME LIKE N'A6.8%'
	)
	AND DATA IS NULL

SELECT *
FROM [mcpfe-2011]
WHERE (STATE_STRUCTURE_NAME = N'A4.6a'
		OR STATE_STRUCTURE_NAME = N'A6.7'
		OR STATE_STRUCTURE_NAME LIKE N'A6.8%'
	)
	AND DATA IS NULL

ROLLBACK TRANSACTION
--COMMIT TRANSACTION
GO