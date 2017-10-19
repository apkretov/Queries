USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 69,
--		@Group_E = N'Area of stands dominated by introduced tree species: Total (1000 ha)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 26,
--		@ReportingForm_E = N'Form 4.4a: Introduced tree species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forest/Introduced total',
--	@STATE_STRUCTURE_NAME = N'F4.4a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 69,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 26,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'OWL/Introduced total',
--	@STATE_STRUCTURE_NAME = N'F4.4a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 69,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 26,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'FOWL/Introduced total',
--	@STATE_STRUCTURE_NAME = N'F4.4a';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 1,
		@Topic_E = N'Forest',
	@Insert_Group = 'y',
		@Group_ID = 70,
		@Group_E = N'Area of stands dominated by introduced tree species: Invasive (1000 ha)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 26,
		@ReportingForm_E = N'Form 4.4a: Introduced tree species',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Forest/Invasive',
	@STATE_STRUCTURE_NAME = N'F4.4a';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 3,
		@Topic_E = N'Other wooded land',
	@Insert_Group = 'n',
		@Group_ID = 70,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 26,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'OWL/Invasive',
	@STATE_STRUCTURE_NAME = N'F4.4a';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 4,
		@Topic_E = N'Total forest and other wooded land',
	@Insert_Group = 'n',
		@Group_ID = 70,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 26,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/Invasive',
	@STATE_STRUCTURE_NAME = N'F4.4a';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
COMMIT TRANSACTION;
--ROLLBACK TRANSACTION;
GO