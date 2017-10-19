USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 19,
--		@ReportingForm_E = N'Form 4.1a: Tree species composition',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'200',
--	@TERM_NAME = N'Forest/1',
--	@STATE_STRUCTURE_NAME = N'F4.1a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 19,
--		@ReportingForm_E = N'Form 4.1a: Tree species composition',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'201',
--	@TERM_NAME = N'OWL/1',
--	@STATE_STRUCTURE_NAME = N'F4.1a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 19,
--		@ReportingForm_E = N'Form 4.1a: Tree species composition',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'202',
--	@TERM_NAME = N'FOWL/1',
--	@STATE_STRUCTURE_NAME = N'F4.1a';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 19,
--		@ReportingForm_E = N'Form 4.1a: Tree species composition',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'203',
--	@TERM_NAME = N'Forest/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 19,
--		@ReportingForm_E = N'Form 4.1a: Tree species composition',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'204',
--	@TERM_NAME = N'OWL/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 19,
--		@ReportingForm_E = N'Form 4.1a: Tree species composition',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'205',
--	@TERM_NAME = N'FOWL/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1a';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 19,
--		@ReportingForm_E = N'Form 4.1a: Tree species composition',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'206',
--	@TERM_NAME = N'Forest/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 19,
--		@ReportingForm_E = N'Form 4.1a: Tree species composition',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'207',
--	@TERM_NAME = N'OWL/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 19,
--		@ReportingForm_E = N'Form 4.1a: Tree species composition',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'208',
--	@TERM_NAME = N'FOWL/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1a';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 19,
--		@ReportingForm_E = N'Form 4.1a: Tree species composition',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'209',
--	@TERM_NAME = N'Forest/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 19,
--		@ReportingForm_E = N'Form 4.1a: Tree species composition',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'210',
--	@TERM_NAME = N'OWL/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 19,
--		@ReportingForm_E = N'Form 4.1a: Tree species composition',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'211',
--	@TERM_NAME = N'FOWL/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1a';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 62,
--		@Group_E = N'Area with >10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 19,
--		@ReportingForm_E = N'Form 4.1a: Tree species composition',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'212',
--	@TERM_NAME = N'Forest/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 62,
--		@Group_E = N'Area with >10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 19,
--		@ReportingForm_E = N'Form 4.1a: Tree species composition',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'213',
--	@TERM_NAME = N'OWL/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 62,
--		@Group_E = N'Area with >10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 19,
--		@ReportingForm_E = N'Form 4.1a: Tree species composition',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'214',
--	@TERM_NAME = N'FOWL/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1a';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO