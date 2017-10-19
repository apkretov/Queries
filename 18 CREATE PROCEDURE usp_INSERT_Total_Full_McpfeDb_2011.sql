USE Timber;
GO
IF OBJECT_ID ( 'usp_INSERT_Total_Full_McpfeDb_2011', 'P' ) IS NOT NULL 
    DROP PROCEDURE usp_INSERT_Total_Full_McpfeDb_2011;
GO

CREATE PROCEDURE usp_INSERT_Total_Full_McpfeDb_2011 
	@Insert_Topic char,
		@Topic_ID int,
		@Topic_E varchar(3000),
	@Insert_Group char,
		@Group_ID int,
		@Group_E varchar(3000),
	@Insert_ReportingForm char,
		@ReportingForm_ID int,
		@ReportingForm_E varchar(3000),
	@Subgroup_ID int,
    @DIMENSION_ID varchar(100),
	@TERM_NAME nvarchar(255),
	@STATE_STRUCTURE_NAME nvarchar(255)/*,
	@Insert_Total_Full_McpfeDb_2011 char*/
AS 

IF @Insert_Topic = 'y' BEGIN --Insert topic?
--	SELECT COUNT(*) AS COUNT_Topics_2011_Before --Show the total number of record before inserting the new records
--		FROM Topics_2011;
	SET IDENTITY_INSERT Topics_2011 ON;
	INSERT INTO Topics_2011 (Topic_ID, Topic_E) --Insert the new records
		VALUES (@Topic_ID, @Topic_E);
	SET IDENTITY_INSERT Topics_2011 OFF;
--	SELECT * --Show the results
--		FROM Topics_2011;
--	SELECT COUNT(*) AS COUNT_Topics_2011_After --Show the total number of record after inserting the new records
--		FROM Topics_2011;
END

IF @Insert_Group = 'y' BEGIN --Insert group?
--	SELECT COUNT(*) AS COUNT_Groups_2011_Before --Show the total number of record before inserting the new records
--		FROM Groups_2011;
	SET IDENTITY_INSERT Groups_2011 ON;
	INSERT INTO Groups_2011 (Group_ID, Group_E) --Insert the new records
		VALUES (@Group_ID, @Group_E);
	SET IDENTITY_INSERT Groups_2011 OFF;
--	SELECT * --Show the results
--		FROM Groups_2011;
--	SELECT COUNT(*) AS COUNT_Groups_2011_After --Show the total number of record after inserting the new records
--		FROM Groups_2011;
END

IF @Insert_ReportingForm = 'y' BEGIN --Insert reporting form?
--	SELECT COUNT(*) AS COUNT_ReportingForms_2011_Before --Show the total number of record before inserting the new records
--		FROM ReportingForms_2011;
	SET IDENTITY_INSERT ReportingForms_2011 ON;
	INSERT INTO ReportingForms_2011 (ReportingForm_ID, ReportingForm_E, STATE_STRUCTURE_NAME) --Insert the new records
		VALUES (@ReportingForm_ID, @ReportingForm_E, @STATE_STRUCTURE_NAME);
	SET IDENTITY_INSERT ReportingForms_2011 OFF;
--	SELECT * --Show the results
--		FROM ReportingForms_2011;
--	SELECT COUNT(*) AS COUNT_ReportingForms_2011_After --Show the total number of record after inserting the new records
--		FROM ReportingForms_2011;
END

--SELECT COUNT(*) AS COUNT_Dimensions_2011_Before --Show the total number of record before inserting the new records
--	FROM Dimensions_2011;
/*INSERT INTO Dimensions_2011 --Insert the new records
	VALUES (@DIMENSION_ID, @TERM_NAME, @Topic_ID, @Group_ID, @Subgroup_ID, @ReportingForm_ID);*/

INSERT INTO Dimensions_2011 (TERM_NAME, Topic_ID, Group_ID, Subgroup_ID, ReportingForm_ID) --Insert the new records
VALUES (@TERM_NAME, @Topic_ID, @Group_ID, @Subgroup_ID, @ReportingForm_ID);

SELECT @DIMENSION_ID = (SELECT MAX(DIMENSION_ID) FROM Dimensions_2011)


--SELECT * --Show the results
--	FROM Dimensions_2011;
--SELECT COUNT(*) AS COUNT_Dimensions_2011_After --Show the total number of record after inserting the new records
--	FROM Dimensions_2011;

--IF @Insert_Total_Full_McpfeDb_2011 = 'y' BEGIN --Insert Total_Full_McpfeDb_2011?

--SELECT COUNT(*) AS COUNT_Total_Full_McpfeDb_2011_Before --Show the total number of record in Total_Full_McpfeDb_2011 before inserting the new records
--	FROM Total_Full_McpfeDb_2011;

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Total_Full_McpfeDb_2011_Tmp]') AND type in (N'U'))
DROP TABLE [dbo].[Total_Full_McpfeDb_2011_Tmp]; -- Create a temporary Total_Full_McpfeDb_2011_Tmp table to upload its data into the Total_Full_McpfeDb_2011 table. Direct uploading sometimes dosn't work due to inability to convert the Value column type from nvarchar to float.

SELECT Countries.UN_COUNTRY_CODE, --The records to be uploaded.
	[mcpfe-2011].YEAR,
	@DIMENSION_ID AS DIMENSION_ID,
	[mcpfe-2011].DATA AS Value
INTO Total_Full_McpfeDb_2011_Tmp
FROM [mcpfe-2011]
INNER JOIN Countries
	ON [mcpfe-2011].COUNTRY_NAME = Countries.COUNTRY_NAME
WHERE [mcpfe-2011].STATE_STRUCTURE_NAME = @STATE_STRUCTURE_NAME
	AND [mcpfe-2011].TERM_NAME = @TERM_NAME
	AND (([mcpfe-2011].Uploaded <> N'yes')
		OR ([mcpfe-2011].Uploaded IS NULL)
	)
	AND [mcpfe-2011].DATA NOT IN (
		SELECT DATA FROM DATA_Excluded
	)
ORDER BY Countries.UN_COUNTRY_CODE, [mcpfe-2011].YEAR;

SELECT COUNT(*) AS 'COUNT of mcpfe-2011 to be uploaded' --Show the number of records to be uploaded.
FROM Total_Full_McpfeDb_2011_Tmp;

EXECUTE usp_Modify_Total_Full_McpfeDb_2011_Tmp; -- Modify the temporary Total_Full_McpfeDb_2011_Tmp table's Value column type to float to upload its data into the Total_Full_McpfeDb_2011 table. Direct uploading sometimes dosn't work due to inability to convert the Value column type from nvarchar to float.

INSERT Total_Full_McpfeDb_2011 --Insert values from the temporary Total_Full_McpfeDb_2011_Tmp table.
	SELECT *
	FROM Total_Full_McpfeDb_2011_Tmp;

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Total_Full_McpfeDb_2011_Tmp]') AND type in (N'U'))
DROP TABLE [dbo].[Total_Full_McpfeDb_2011_Tmp]; --Drop the temporary Total_Full_McpfeDb_2011_Tmp] table.

--END

--SELECT * --Show results
--	FROM Total_Full_McpfeDb_2011
--WHERE DIMENSION_ID = @DIMENSION_ID
--ORDER BY UN_COUNTRY_CODE, YEAR;

--SELECT COUNT(*) AS COUNT_Total_Full_McpfeDb_2011_After --Show the total number of record in Total_Full_McpfeDb_2011 after inserting the new records
--	FROM Total_Full_McpfeDb_2011;

UPDATE [mcpfe-2011] --Flag updated records
	SET Uploaded = 'yes'
WHERE STATE_STRUCTURE_NAME = @STATE_STRUCTURE_NAME
	AND TERM_NAME = @TERM_NAME
	AND (([mcpfe-2011].Uploaded <> N'yes')
		OR ([mcpfe-2011].Uploaded IS NULL)
	)
	AND [mcpfe-2011].DATA NOT IN (
		SELECT DATA FROM DATA_Excluded
	);

--SELECT COUNTRY_NAME, --Show results
--	STATE_STRUCTURE_NAME,
--	TERM_NAME,
--	YEAR,
--	/*UNIT_NAME,*/
--	DATA,
--	Uploaded
--FROM [mcpfe-2011]
--WHERE STATE_STRUCTURE_NAME = @STATE_STRUCTURE_NAME
--	AND TERM_NAME = @TERM_NAME
--ORDER BY COUNTRY_NAME, YEAR;

--SELECT COUNT(*) AS COUNT_mcpfe_2011 --Show the results
--FROM [mcpfe-2011]
--WHERE STATE_STRUCTURE_NAME = @STATE_STRUCTURE_NAME
--	AND TERM_NAME = @TERM_NAME;

SELECT COUNT(*) AS 'COUNT of mcpfe-2011 not uploaded' --Show the number of records not uploaded.
FROM [mcpfe-2011]
INNER JOIN Countries
	ON [mcpfe-2011].COUNTRY_NAME = Countries.COUNTRY_NAME
WHERE [mcpfe-2011].STATE_STRUCTURE_NAME = @STATE_STRUCTURE_NAME
	AND [mcpfe-2011].TERM_NAME = @TERM_NAME
	AND (([mcpfe-2011].Uploaded <> N'yes')
		OR ([mcpfe-2011].Uploaded IS NULL)
	)
	AND [mcpfe-2011].DATA NOT IN (
		SELECT DATA FROM DATA_Excluded
	);

GO