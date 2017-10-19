USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 91,
--		@Group_E = N'Infrastructure and managed natural resources Subclass of MCPFE Class 3 (1000 ha)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 33,
--		@ReportingForm_E = N'Form 5.2: Protective forests  – infrastructure and managed natural resources',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forest/Infrastruct',
--	@STATE_STRUCTURE_NAME = N'F5.2';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 91,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 33,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'OWL/Infrastruct',
--	@STATE_STRUCTURE_NAME = N'F5.2';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 91,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 33,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'FOWL/Infrastruct',
--	@STATE_STRUCTURE_NAME = N'F5.2';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 1,
		@Topic_E = N'Forest',
	@Insert_Group = 'y',
		@Group_ID = 92,
		@Group_E = N'Natura-2000 areas with protective functions outside MCPFE Class 3 (1000 ha)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 33,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Forest/Nat2000 infrastruct',
	@STATE_STRUCTURE_NAME = N'F5.2';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 3,
		@Topic_E = N'Other wooded land',
	@Insert_Group = 'n',
		@Group_ID = 92,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 33,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'OWL/Nat2000 infrastruct',
	@STATE_STRUCTURE_NAME = N'F5.2';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 4,
		@Topic_E = N'Total forest and other wooded land',
	@Insert_Group = 'n',
		@Group_ID = 92,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 33,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/Nat2000 infrastruct',
	@STATE_STRUCTURE_NAME = N'F5.2';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO