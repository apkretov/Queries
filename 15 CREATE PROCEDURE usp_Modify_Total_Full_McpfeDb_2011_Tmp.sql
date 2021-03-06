USE Timber; -- Modify the temporary Total_Full_McpfeDb_2011_Tmp table's Value column type to float to upload its data into the Total_Full_McpfeDb_2011 table. Direct uploading sometimes dosn't work due to inability to convert the Value column type from nvarchar to float.
GO

IF OBJECT_ID ( 'usp_Modify_Total_Full_McpfeDb_2011_Tmp', 'P' ) IS NOT NULL 
    DROP PROCEDURE usp_Modify_Total_Full_McpfeDb_2011_Tmp;
GO
CREATE PROCEDURE usp_Modify_Total_Full_McpfeDb_2011_Tmp
AS 

	--BEGIN TRANSACTION
	SET QUOTED_IDENTIFIER ON
	SET ARITHABORT ON
	SET NUMERIC_ROUNDABORT OFF
	SET CONCAT_NULL_YIELDS_NULL ON
	SET ANSI_NULLS ON
	SET ANSI_PADDING ON
	SET ANSI_WARNINGS ON
--	COMMIT
--	BEGIN TRANSACTION
	CREATE TABLE dbo.Tmp_Total_Full_McpfeDb_2011_Tmp
		(
		UN_COUNTRY_CODE varchar(100) NOT NULL,
		YEAR varchar(100) NULL,
		--DIMENSION_ID nvarchar(3) NOT NULL,
		DIMENSION_ID int NOT NULL,
		Value float(53) NULL
		)  ON [PRIMARY];
	IF EXISTS(SELECT * FROM dbo.Total_Full_McpfeDb_2011_Tmp)
		 EXEC('INSERT INTO dbo.Tmp_Total_Full_McpfeDb_2011_Tmp (UN_COUNTRY_CODE, YEAR, DIMENSION_ID, Value)
			SELECT UN_COUNTRY_CODE, YEAR, DIMENSION_ID, CONVERT(float(53), Value) FROM dbo.Total_Full_McpfeDb_2011_Tmp WITH (HOLDLOCK TABLOCKX)');
	DROP TABLE dbo.Total_Full_McpfeDb_2011_Tmp;
	EXECUTE sp_rename N'dbo.Tmp_Total_Full_McpfeDb_2011_Tmp', N'Total_Full_McpfeDb_2011_Tmp', 'OBJECT';
	--COMMIT
	select Has_Perms_By_Name(N'dbo.Total_Full_McpfeDb_2011_Tmp', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Total_Full_McpfeDb_2011_Tmp', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Total_Full_McpfeDb_2011_Tmp', 'Object', 'CONTROL') as Contr_Per;

GO