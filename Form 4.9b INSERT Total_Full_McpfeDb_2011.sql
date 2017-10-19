USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 83,
--		@Group_E = N'Natura2000 - total area (1000 ha)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 31,
--		@ReportingForm_E = N'Form 4.9b: Protected forests - Natura 2000 forest areas',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forest/Nat2000 total',
--	@STATE_STRUCTURE_NAME = N'F4.9';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 83,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 31,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'OWL/Nat2000 total',
--	@STATE_STRUCTURE_NAME = N'F4.9';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 83,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 31,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'FOWL/Nat2000 total',
--	@STATE_STRUCTURE_NAME = N'F4.9'; --Backed up at 12:30
--
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 84,
--		@Group_E = N'MCPFE Protected Forest Areas overlapping with Natura2000 areas: MCPFE Class 1.1 (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 31,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forest/Nat2000 class 1.1',
--	@STATE_STRUCTURE_NAME = N'F4.9';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 84,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 31,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'OWL/Nat2000 class 1.1',
--	@STATE_STRUCTURE_NAME = N'F4.9';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 84,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 31,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'FOWL/Nat2000 class 1.1',
--	@STATE_STRUCTURE_NAME = N'F4.9';
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 85,
--		@Group_E = N'MCPFE Protected Forest Areas overlapping with Natura2000 areas: MCPFE Class 1.2 (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 31,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forest/Nat2000 class 1.2',
--	@STATE_STRUCTURE_NAME = N'F4.9';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 85,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 31,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'OWL/Nat2000 class 1.2',
--	@STATE_STRUCTURE_NAME = N'F4.9';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 85,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 31,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'FOWL/Nat2000 class 1.2',
--	@STATE_STRUCTURE_NAME = N'F4.9'; --Backed up at 14:40
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 86,
--		@Group_E = N'MCPFE Protected Forest Areas overlapping with Natura2000 areas: MCPFE Class 1.3 (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 31,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forest/Nat2000 class 1.3',
--	@STATE_STRUCTURE_NAME = N'F4.9';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 86,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 31,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'OWL/Nat2000 class 1.3',
--	@STATE_STRUCTURE_NAME = N'F4.9';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 86,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 31,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'FOWL/Nat2000 class 1.3',
--	@STATE_STRUCTURE_NAME = N'F4.9';
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 87,
--		@Group_E = N'MCPFE Protected Forest Areas overlapping with Natura2000 areas: MCPFE Class 2 (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 31,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forest/Nat2000 class 2',
--	@STATE_STRUCTURE_NAME = N'F4.9';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 87,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 31,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'OWL/Nat2000 class 2',
--	@STATE_STRUCTURE_NAME = N'F4.9';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 87,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 31,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'FOWL/Nat2000 class 2',
--	@STATE_STRUCTURE_NAME = N'F4.9';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 1,
		@Topic_E = N'Forest',
	@Insert_Group = 'y',
		@Group_ID = 88,
		@Group_E = N'Natura 2000 areas with landscape management outside MCPFE Class 2 (1000 ha)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 31,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Forest/Nat2000 no class 2',
	@STATE_STRUCTURE_NAME = N'F4.9';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 3,
		@Topic_E = N'Other wooded land',
	@Insert_Group = 'n',
		@Group_ID = 88,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 31,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'OWL/Nat2000 no class 2',
	@STATE_STRUCTURE_NAME = N'F4.9';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 4,
		@Topic_E = N'Total forest and other wooded land',
	@Insert_Group = 'n',
		@Group_ID = 88,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 31,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/Nat2000 no class 2',
	@STATE_STRUCTURE_NAME = N'F4.9';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO