USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.
--EXECUTE usp_INSERT_DATA_Excluded N'.'; --Insert the excluded data.

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 78,
		@Topic_E = N'Ecological services',
	@Insert_Group = 'y',
		@Group_ID = 104,
		@Group_E = N'Euro/ECU (million)',
	@Insert_ReportingForm = 'y', 
		@ReportingForm_ID = 37,
		@ReportingForm_E = N'Form 6.4: Expenditures for services - Government expenditures for forest services',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Eco serv/Expenditure',
	@STATE_STRUCTURE_NAME = N'F6.4';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 79,
		@Topic_E = N'Biospheric services',
	@Insert_Group = 'n',
		@Group_ID = 104,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 37,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Biosph serv/Expenditure',
	@STATE_STRUCTURE_NAME = N'F6.4';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 80,
		@Topic_E = N'Social and amenity services',
	@Insert_Group = 'n',
		@Group_ID = 104,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 37,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Social serv/Expenditure',
	@STATE_STRUCTURE_NAME = N'F6.4';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 81,
		@Topic_E = N'Other  services',
	@Insert_Group = 'n',
		@Group_ID = 104,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 37,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Other serv/Expenditure',
	@STATE_STRUCTURE_NAME = N'F6.4';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO