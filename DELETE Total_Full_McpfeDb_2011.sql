USE Timber_2011
GO
BEGIN TRANSACTION

EXECUTE usp_DELETE_Total_Full_McpfeDb_2011
	@Delete_Topics = 'y',
		@Topic_ID_Beg = 27,
		@Topic_ID_End = 32,
	@Delete_Groups = 'n',
		@Group_ID_Beg = 0,
		@Group_ID_End = 0,
    @DIMENSION_ID_Beg = 66,
	@DIMENSION_ID_End = 76,
	@ReportingForm_ID = 6,
	@STATE_STRUCTURE_NAME = N'A3.3b';

ROLLBACK TRANSACTION
--COMMIT TRANSACTION
GO