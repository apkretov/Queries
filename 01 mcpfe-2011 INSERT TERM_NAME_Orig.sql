/*
   19 июля 2011 г.20:03:45
   User: sa
   Server: localhost
   Database: Timber
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[Tmp_mcpfe-2011]
	(
	COUNTRY_NAME nvarchar(255) NULL,
	ISO2 nvarchar(255) NULL,
	STATE_STRUCTURE_NAME nvarchar(255) NULL,
	TERM_NAME nvarchar(255) NULL,
	TERM_NAME_Orig nvarchar(255) NULL,
	YEAR float(53) NULL,
	UNIT_NAME nvarchar(255) NULL,
	DATA nvarchar(255) NULL,
	Changed nvarchar(255) NULL
	)  ON [PRIMARY]
GO
IF EXISTS(SELECT * FROM dbo.[mcpfe-2011])
	 EXEC('INSERT INTO dbo.[Tmp_mcpfe-2011] (COUNTRY_NAME, ISO2, STATE_STRUCTURE_NAME, TERM_NAME, YEAR, UNIT_NAME, DATA, Changed)
		SELECT COUNTRY_NAME, ISO2, STATE_STRUCTURE_NAME, TERM_NAME, YEAR, UNIT_NAME, DATA, Changed FROM dbo.[mcpfe-2011] WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.[mcpfe-2011]
GO
EXECUTE sp_rename N'dbo.[Tmp_mcpfe-2011]', N'mcpfe-2011', 'OBJECT' 
GO
COMMIT
