USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.
EXECUTE usp_INSERT_DATA_Excluded N'.'; --Insert the excluded data.

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 82,
		@Topic_E = N'Sites with recognized cultural & spiritual values in forest and other wooded land',
	@Insert_Group = 'y',
		@Group_ID = 124,
		@Group_E = N'Cultural heritage: Total (number of sites)',
	@Insert_ReportingForm = 'y',
		@ReportingForm_ID = 42,
		@ReportingForm_E = N'Form 6.11: Cultural and spiritual values',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/Cult total',
	@STATE_STRUCTURE_NAME = N'F6.11';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 82,
		@Topic_E = N'-',
	@Insert_Group = 'y',
		@Group_ID = 125,
		@Group_E = N'Cultural heritage: Associated with historic forest management (number of sites)',
	@Insert_ReportingForm = 'n',
		@ReportingForm_ID = 42,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/Cult for manag',
	@STATE_STRUCTURE_NAME = N'F6.11';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 82,
		@Topic_E = N'-',
	@Insert_Group = 'y',
		@Group_ID = 126,
		@Group_E = N'Forested landscapes (number of sites)',
	@Insert_ReportingForm = 'n',
		@ReportingForm_ID = 42,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/For landscape',
	@STATE_STRUCTURE_NAME = N'F6.11';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 82,
		@Topic_E = N'-',
	@Insert_Group = 'y',
		@Group_ID = 127,
		@Group_E = N'Trees (number of sites)',
	@Insert_ReportingForm = 'n',
		@ReportingForm_ID = 42,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/Trees',
	@STATE_STRUCTURE_NAME = N'F6.11';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 82,
		@Topic_E = N'-',
	@Insert_Group = 'y',
		@Group_ID = 128,
		@Group_E = N'Other sites (number of sites)',
	@Insert_ReportingForm = 'n',
		@ReportingForm_ID = 42,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/Other site',
	@STATE_STRUCTURE_NAME = N'F6.11';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO