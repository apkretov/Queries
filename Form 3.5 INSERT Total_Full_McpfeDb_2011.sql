USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 1,
		@Topic_E = N'Forest',
	@Insert_Group = 'n',
		@Group_ID = 55,
		@Group_E = N'Management plans (%)',
	@Insert_ReportingForm = 'y', 
		@ReportingForm_ID = 18,
		@ReportingForm_E = N'Form 3.5: Forests under management plans',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Forest/Manag plan',
	@STATE_STRUCTURE_NAME = N'F3.5';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 3,
		@Topic_E = N'Other wooded land',
	@Insert_Group = 'n',
		@Group_ID = 55,
		@Group_E = N'Management plans (%)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 18,
		@ReportingForm_E = N'Form 3.5: Forests under management plans',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'OWL/Manag plan',
	@STATE_STRUCTURE_NAME = N'F3.5';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 4,
		@Topic_E = N'Total forest and other wooded land',
	@Insert_Group = 'n',
		@Group_ID = 55,
		@Group_E = N'Management plans (%)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 18,
		@ReportingForm_E = N'Form 3.5: Forests under management plans',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/Manag plan',
	@STATE_STRUCTURE_NAME = N'F3.5';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 1,
		@Topic_E = N'Forest',
	@Insert_Group = 'n',
		@Group_ID = 56,
		@Group_E = N'Equivalents (%)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 18,
		@ReportingForm_E = N'Form 3.5: Forests under management plans',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Forest/Equival',
	@STATE_STRUCTURE_NAME = N'F3.5';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 3,
		@Topic_E = N'Other wooded land',
	@Insert_Group = 'n',
		@Group_ID = 56,
		@Group_E = N'Equivalents (%)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 18,
		@ReportingForm_E = N'Form 3.5: Forests under management plans',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'OWL/Equival',
	@STATE_STRUCTURE_NAME = N'F3.5';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 4,
		@Topic_E = N'Total forest and other wooded land',
	@Insert_Group = 'n',
		@Group_ID = 56,
		@Group_E = N'Equivalents (%)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 18,
		@ReportingForm_E = N'Form 3.5: Forests under management plans',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/Equival',
	@STATE_STRUCTURE_NAME = N'F3.5';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 1,
		@Topic_E = N'Forest',
	@Insert_Group = 'n',
		@Group_ID = 57,
		@Group_E = N'Total (%)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 18,
		@ReportingForm_E = N'Form 3.5: Forests under management plans',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Forest/Total plan',
	@STATE_STRUCTURE_NAME = N'F3.5';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 3,
		@Topic_E = N'Other wooded land',
	@Insert_Group = 'n',
		@Group_ID = 57,
		@Group_E = N'Total (%)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 18,
		@ReportingForm_E = N'Form 3.5: Forests under management plans',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'OWL/Total plan',
	@STATE_STRUCTURE_NAME = N'F3.5';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 4,
		@Topic_E = N'Total forest and other wooded land',
	@Insert_Group = 'n',
		@Group_ID = 57,
		@Group_E = N'Total (%)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 18,
		@ReportingForm_E = N'Form 3.5: Forests under management plans',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/Total plan',
	@STATE_STRUCTURE_NAME = N'F3.5';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO