USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.
--EXECUTE usp_INSERT_DATA_Excluded N'.'; --Insert the excluded data.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 71,
--		@Topic_E = N'Forestry (ISIC/NACE 02)',
--	@Insert_Group = 'y',
--		@Group_ID = 102,
--		@Group_E = N'Factor income (million Euro/ECU)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 36,
--		@ReportingForm_E = N'Form 6.3: Net revenue - Factor income and entrepreneurial income',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forestry/Factor inc',
--	@STATE_STRUCTURE_NAME = N'F6.3';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 71,
		@Topic_E = N'Forestry (ISIC/NACE 02)',
	@Insert_Group = 'y',
		@Group_ID = 103,
		@Group_E = N'Net entrepreneurial income (million Euro/ECU)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 36,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Forestry/Entrep inc',
	@STATE_STRUCTURE_NAME = N'F6.3';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO