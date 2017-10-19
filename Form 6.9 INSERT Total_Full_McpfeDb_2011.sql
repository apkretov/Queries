USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 6,
		@Topic_E = N'Total national primary energy consumption (TJ/yr)',
	@Insert_Group = 'y',
SUSPENDED THEN MADE	AND LOST	@Group_ID = 3,
		@Group_E = N'Total area damaged by different agents (1000 ha)',
	@Insert_ReportingForm = 'y', 
		@ReportingForm_ID = 2,
		@ReportingForm_E = N'Form 2.4a: Forest damage',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'006',
	@TERM_NAME = N'Forest/Total area',
	@STATE_STRUCTURE_NAME = N'F2.4a';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.

--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO