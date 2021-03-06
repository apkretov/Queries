USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.
EXECUTE usp_INSERT_DATA_Excluded N'.'; --Insert the excluded data.

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 4,
		@Topic_E = N'Total forest and other wooded land',
	@Insert_Group = 'y',
		@Group_ID = 119,
		@Group_E = N'Area with access available to the public for recreational purposes: Total (1000 ha)',
	@Insert_ReportingForm = 'y',
		@ReportingForm_ID = 41,
		@ReportingForm_E = N'Form 6.10: Accessibility for recreation - Accessibility for recreation and intensity of use',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/Public access',
	@STATE_STRUCTURE_NAME = N'F6.10';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 4,
		@Topic_E = N'Total forest and other wooded land',
	@Insert_Group = 'y',
		@Group_ID = 120,
		@Group_E = N'Area with access available to the public for recreational purposes: % of total',
	@Insert_ReportingForm = 'n',
		@ReportingForm_ID = 41,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/Public access %',
	@STATE_STRUCTURE_NAME = N'F6.10';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 4,
		@Topic_E = N'Total forest and other wooded land',
	@Insert_Group = 'y',
		@Group_ID = 121,
		@Group_E = N'Area with recreational use as one main management goal: Total (1000 ha)',
	@Insert_ReportingForm = 'n',
		@ReportingForm_ID = 41,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/Recreation',
	@STATE_STRUCTURE_NAME = N'F6.10';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 4,
		@Topic_E = N'Total forest and other wooded land',
	@Insert_Group = 'y',
		@Group_ID = 122,
		@Group_E = N'Area with recreational use as one main management goal: % of total',
	@Insert_ReportingForm = 'n',
		@ReportingForm_ID = 41,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/Recreation %',
	@STATE_STRUCTURE_NAME = N'F6.10';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 4,
		@Topic_E = N'Total forest and other wooded land',
	@Insert_Group = 'y',
		@Group_ID = 123,
		@Group_E = N'Intensity of use: Annual number of visits (million)',
	@Insert_ReportingForm = 'n',
		@ReportingForm_ID = 41,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/Annual use',
	@STATE_STRUCTURE_NAME = N'F6.10';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO