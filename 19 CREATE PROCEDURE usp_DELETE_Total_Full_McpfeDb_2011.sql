USE Timber;
GO
IF OBJECT_ID ( 'usp_DELETE_Total_Full_McpfeDb_2011', 'P' ) IS NOT NULL 
    DROP PROCEDURE usp_DELETE_Total_Full_McpfeDb_2011;
GO

CREATE PROCEDURE usp_DELETE_Total_Full_McpfeDb_2011 
	@Delete_Topics char,
		@Topic_ID_Beg int,
		@Topic_ID_End int,
	@Delete_Groups char,
		@Group_ID_Beg int,
		@Group_ID_End int,
    @DIMENSION_ID_Beg int /*varchar(100)*/,
	@DIMENSION_ID_End int /*varchar(100)*/,
	@ReportingForm_ID int,
	@STATE_STRUCTURE_NAME nvarchar(255)
AS 

DELETE FROM Total_Full_McpfeDb_2011
--SELECT * FROM Total_Full_McpfeDb_2011
WHERE DIMENSION_ID >= @DIMENSION_ID_Beg
	AND DIMENSION_ID <= @DIMENSION_ID_End;

DELETE FROM Dimensions_2011
--SELECT * FROM Dimensions_2011
WHERE DIMENSION_ID >= @DIMENSION_ID_Beg
	AND DIMENSION_ID <= @DIMENSION_ID_End;

IF @Delete_Topics = 'y' BEGIN --Delete topics?
	DELETE FROM Topics_2011
	--SELECT * FROM Topics_2011
	WHERE Topic_ID >= @Topic_ID_Beg
		AND Topic_ID <= @Topic_ID_End;
END

IF @Delete_Groups = 'y' BEGIN --Delete groups?
	DELETE FROM Groups_2011
	--SELECT * FROM Groups_2011
	WHERE Group_ID >= @Group_ID_Beg
		AND Group_ID <= @Group_ID_End;
END

DELETE FROM ReportingForms_2011
--SELECT * FROM ReportingForms_2011
WHERE ReportingForm_ID = @ReportingForm_ID;

UPDATE [mcpfe-2011] SET Uploaded = 'no'
--SELECT * FROM [mcpfe-2011]
WHERE STATE_STRUCTURE_NAME = @STATE_STRUCTURE_NAME
	AND Uploaded = 'yes';

GO