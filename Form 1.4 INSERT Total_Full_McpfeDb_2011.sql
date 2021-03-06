USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'n',
--		@Group_ID = 40,
--		@Group_E = N'Carbon in living biomass: Above-ground (million metric tonnes)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 15,
--		@ReportingForm_E = N'Form 1.4: Carbon stock',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forest/C AG',
--	@STATE_STRUCTURE_NAME = N'F1.4';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 40,
--		@Group_E = N'Carbon in living biomass: Above-ground (million metric tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 15,
--		@ReportingForm_E = N'Form 1.4: Carbon stock',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'OWL/C AG',
--	@STATE_STRUCTURE_NAME = N'F1.4';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 40,
--		@Group_E = N'Carbon in living biomass: Above-ground (million metric tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 15,
--		@ReportingForm_E = N'Form 1.4: Carbon stock',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'FOWL/C AG',
--	@STATE_STRUCTURE_NAME = N'F1.4';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'n',
--		@Group_ID = 41,
--		@Group_E = N'Carbon in living biomass: Below-ground (million metric tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 15,
--		@ReportingForm_E = N'Form 1.4: Carbon stock',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forest/C BG',
--	@STATE_STRUCTURE_NAME = N'F1.4';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 41,
--		@Group_E = N'Carbon in living biomass: Below-ground (million metric tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 15,
--		@ReportingForm_E = N'Form 1.4: Carbon stock',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'OWL/C BG',
--	@STATE_STRUCTURE_NAME = N'F1.4';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 41,
--		@Group_E = N'Carbon in living biomass: Below-ground (million metric tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 15,
--		@ReportingForm_E = N'Form 1.4: Carbon stock',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'FOWL/C BG',
--	@STATE_STRUCTURE_NAME = N'F1.4';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'n',
--		@Group_ID = 42,
--		@Group_E = N'Carbon in deadwood (million metric tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 15,
--		@ReportingForm_E = N'Form 1.4: Carbon stock',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forest/C deadwood',
--	@STATE_STRUCTURE_NAME = N'F1.4';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 42,
--		@Group_E = N'Carbon in deadwood (million metric tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 15,
--		@ReportingForm_E = N'Form 1.4: Carbon stock',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'OWL/C deadwood',
--	@STATE_STRUCTURE_NAME = N'F1.4';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 42,
--		@Group_E = N'Carbon in deadwood (million metric tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 15,
--		@ReportingForm_E = N'Form 1.4: Carbon stock',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'FOWL/C deadwood',
--	@STATE_STRUCTURE_NAME = N'F1.4';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'n',
--		@Group_ID = 43,
--		@Group_E = N'Carbon in litter (million metric tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 15,
--		@ReportingForm_E = N'Form 1.4: Carbon stock',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forest/C litter',
--	@STATE_STRUCTURE_NAME = N'F1.4';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 43,
--		@Group_E = N'Carbon in litter (million metric tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 15,
--		@ReportingForm_E = N'Form 1.4: Carbon stock',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'OWL/C litter',
--	@STATE_STRUCTURE_NAME = N'F1.4';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 43,
--		@Group_E = N'Carbon in litter (million metric tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 15,
--		@ReportingForm_E = N'Form 1.4: Carbon stock',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'FOWL/C litter',
--	@STATE_STRUCTURE_NAME = N'F1.4';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 1,
		@Topic_E = N'Forest',
	@Insert_Group = 'n',
		@Group_ID = 44,
		@Group_E = N'Soil carbon (million metric tonnes)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 15,
		@ReportingForm_E = N'Form 1.4: Carbon stock',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Forest/C soil',
	@STATE_STRUCTURE_NAME = N'F1.4';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 3,
		@Topic_E = N'Other wooded land',
	@Insert_Group = 'n',
		@Group_ID = 44,
		@Group_E = N'Soil carbon (million metric tonnes)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 15,
		@ReportingForm_E = N'Form 1.4: Carbon stock',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'OWL/C soil',
	@STATE_STRUCTURE_NAME = N'F1.4';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 4,
		@Topic_E = N'Total forest and other wooded land',
	@Insert_Group = 'n',
		@Group_ID = 44,
		@Group_E = N'Soil carbon (million metric tonnes)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 15,
		@ReportingForm_E = N'Form 1.4: Carbon stock',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/C soil',
	@STATE_STRUCTURE_NAME = N'F1.4';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO