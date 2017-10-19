USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 73,
--		@Topic_E = N'In public ownership',
--	@Insert_Group = 'y',
--		@Group_ID = 93,
--		@Group_E = N'Total forest area (1000 ha)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'Form 6.1: Forest holdings',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Public/Total area',
--	@STATE_STRUCTURE_NAME = N'F6.1';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 74,
--		@Topic_E = N'In private ownership',
--	@Insert_Group = 'n',
--		@Group_ID = 93,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Private/Total area',
--	@STATE_STRUCTURE_NAME = N'F6.1';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 75,
--		@Topic_E = N'Other ownership',
--	@Insert_Group = 'n',
--		@Group_ID = 93,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Other/Total area',
--	@STATE_STRUCTURE_NAME = N'F6.1';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 73,
--		@Topic_E = N'In public ownership',
--	@Insert_Group = 'y',
--		@Group_ID = 94,
--		@Group_E = N'Total number of holdings',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Public/Total #',
--	@STATE_STRUCTURE_NAME = N'F6.1';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 74,
--		@Topic_E = N'In private ownership',
--	@Insert_Group = 'n',
--		@Group_ID = 94,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Private/Total #',
--	@STATE_STRUCTURE_NAME = N'F6.1';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 75,
--		@Topic_E = N'Other ownership',
--	@Insert_Group = 'n',
--		@Group_ID = 94,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Other/Total #',
--	@STATE_STRUCTURE_NAME = N'F6.1';
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 73,
--		@Topic_E = N'In public ownership',
--	@Insert_Group = 'y',
--		@Group_ID = 95,
--		@Group_E = N'Number of forest holdings in size classes: <10 ha',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Public/0-10',
--	@STATE_STRUCTURE_NAME = N'F6.1';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 74,
--		@Topic_E = N'In private ownership',
--	@Insert_Group = 'n',
--		@Group_ID = 95,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Private/0-10',
--	@STATE_STRUCTURE_NAME = N'F6.1';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 75,
--		@Topic_E = N'Other ownership',
--	@Insert_Group = 'n',
--		@Group_ID = 95,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Other/0-10',
--	@STATE_STRUCTURE_NAME = N'F6.1';
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 73,
--		@Topic_E = N'In public ownership',
--	@Insert_Group = 'y',
--		@Group_ID = 96,
--		@Group_E = N'Number of forest holdings in size classes: 11-100 ha',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Public/11-100',
--	@STATE_STRUCTURE_NAME = N'F6.1';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 74,
--		@Topic_E = N'In private ownership',
--	@Insert_Group = 'n',
--		@Group_ID = 96,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Private/11-100',
--	@STATE_STRUCTURE_NAME = N'F6.1';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 75,
--		@Topic_E = N'Other ownership',
--	@Insert_Group = 'n',
--		@Group_ID = 96,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Other/11-100',
--	@STATE_STRUCTURE_NAME = N'F6.1';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 73,
--		@Topic_E = N'In public ownership',
--	@Insert_Group = 'y',
--		@Group_ID = 97,
--		@Group_E = N'Number of forest holdings in size classes: 101-500 ha',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Public/101-500',
--	@STATE_STRUCTURE_NAME = N'F6.1';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 74,
--		@Topic_E = N'In private ownership',
--	@Insert_Group = 'n',
--		@Group_ID = 97,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Private/101-500',
--	@STATE_STRUCTURE_NAME = N'F6.1';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 75,
--		@Topic_E = N'Other ownership',
--	@Insert_Group = 'n',
--		@Group_ID = 97,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Other/101-500',
--	@STATE_STRUCTURE_NAME = N'F6.1';
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 73,
--		@Topic_E = N'In public ownership',
--	@Insert_Group = 'y',
--		@Group_ID = 98,
--		@Group_E = N'Number of forest holdings in size classes: 501-10,000 ha',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Public/501-10000',
--	@STATE_STRUCTURE_NAME = N'F6.1';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 74,
--		@Topic_E = N'In private ownership',
--	@Insert_Group = 'n',
--		@Group_ID = 98,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Private/501-10000',
--	@STATE_STRUCTURE_NAME = N'F6.1';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 75,
--		@Topic_E = N'Other ownership',
--	@Insert_Group = 'n',
--		@Group_ID = 98,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 34,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Other/501-10000',
--	@STATE_STRUCTURE_NAME = N'F6.1';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 73,
		@Topic_E = N'In public ownership',
	@Insert_Group = 'y',
		@Group_ID = 99,
		@Group_E = N'Number of forest holdings in size classes: >10,000 ha',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 34,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Public/10000+',
	@STATE_STRUCTURE_NAME = N'F6.1';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 74,
		@Topic_E = N'In private ownership',
	@Insert_Group = 'n',
		@Group_ID = 99,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 34,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Private/10000+',
	@STATE_STRUCTURE_NAME = N'F6.1';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 75,
		@Topic_E = N'Other ownership',
	@Insert_Group = 'n',
		@Group_ID = 99,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 34,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Other/10000+',
	@STATE_STRUCTURE_NAME = N'F6.1';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO