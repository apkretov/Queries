USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 1,
--		@Group_E = N'Area (1000 ha)',
--	@Insert_ReportingForm = 'y',
--		@ReportingForm_ID = 1,
--		@ReportingForm_E = N'Form 1.1a: Forest area',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'001',
--	@TERM_NAME = N'Forest',
--	@STATE_STRUCTURE_NAME = N'F1.1a';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 2,
--		@Topic_E = N'Forest available for wood supply',
--	@Insert_Group = 'n',
--		@Group_ID = 1,
--		@Group_E = N'Area (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 1,
--		@ReportingForm_E = N'Form 1.1a: Forest area',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'002',
--	@TERM_NAME = N'FAWS',
--	@STATE_STRUCTURE_NAME = N'F1.1a';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 1,
--		@Group_E = N'Area (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 1,
--		@ReportingForm_E = N'Form 1.1a: Forest area',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'003',
--	@TERM_NAME = N'OWL',
--	@STATE_STRUCTURE_NAME = N'F1.1a';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 1,
--		@Group_E = N'Area (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 1,
--		@ReportingForm_E = N'Form 1.1a: Forest area',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'004',
--	@TERM_NAME = N'FOWL',
--	@STATE_STRUCTURE_NAME = N'F1.1a';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 5,
--		@Topic_E = N'Other land',
--	@Insert_Group = 'n',
--		@Group_ID = 1,
--		@Group_E = N'Area (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 1,
--		@ReportingForm_E = N'Form 1.1a: Forest area',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'005',
--	@TERM_NAME = N'Other land',
--	@STATE_STRUCTURE_NAME = N'F1.1a';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO