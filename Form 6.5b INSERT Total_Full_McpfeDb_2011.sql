USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.
--EXECUTE usp_INSERT_DATA_Excluded N'.'; --Insert the excluded data.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 71, --The code isn't in line with the below codes due to filling the gap of code 71
--		@Topic_E = N'Forestry (ISIC/NACE 02)',
--	@Insert_Group = 'y',
--		@Group_ID = 110,
--		@Group_E = N'Education (Categories ISCED 1997): 0-2',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 39,
--		@ReportingForm_E = N'Form 6.5b: Forest sector workforce - Employment (thousand FTE) by education and job characteristics',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forestry/Education/0-2',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 76,
--		@Topic_E = N'Manufacture of wood and articles in wood (ISIC/NACE 20)',
--	@Insert_Group = 'n',
--		@Group_ID = 110,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 39,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Wood/Education/0-2',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 77,
--		@Topic_E = N'Manufacture of paper and paper products (ISIC/NACE 21)',
--	@Insert_Group = 'n',
--		@Group_ID = 110,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 39,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Paper/Education/0-2',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 71, --The code isn't in line with the below codes due to filling the gap of code 71
--		@Topic_E = N'Forestry (ISIC/NACE 02)',
--	@Insert_Group = 'y',
--		@Group_ID = 111,
--		@Group_E = N'Education (Categories ISCED 1997): 3-4',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 39,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forestry/Education/3-4',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 76,
--		@Topic_E = N'Manufacture of wood and articles in wood (ISIC/NACE 20)',
--	@Insert_Group = 'n',
--		@Group_ID = 111,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 39,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Wood/Education/3-4',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 77,
--		@Topic_E = N'Manufacture of paper and paper products (ISIC/NACE 21)',
--	@Insert_Group = 'n',
--		@Group_ID = 111,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 39,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Paper/Education/3-4',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 71, --The code isn't in line with the below codes due to filling the gap of code 71
--		@Topic_E = N'Forestry (ISIC/NACE 02)',
--	@Insert_Group = 'y',
--		@Group_ID = 112,
--		@Group_E = N'Education (Categories ISCED 1997): 5-6',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 39,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forestry/Education/5-6',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 76,
--		@Topic_E = N'Manufacture of wood and articles in wood (ISIC/NACE 20)',
--	@Insert_Group = 'n',
--		@Group_ID = 112,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 39,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Wood/Education/5-6',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 77,
--		@Topic_E = N'Manufacture of paper and paper products (ISIC/NACE 21)',
--	@Insert_Group = 'n',
--		@Group_ID = 112,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 39,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Paper/Education/5-6',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 71, --The code isn't in line with the below codes due to filling the gap of code 71
--		@Topic_E = N'Forestry (ISIC/NACE 02)',
--	@Insert_Group = 'y',
--		@Group_ID = 113,
--		@Group_E = N'Job characteristics: Employees',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 39,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forestry/Job/Empl',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 76,
--		@Topic_E = N'Manufacture of wood and articles in wood (ISIC/NACE 20)',
--	@Insert_Group = 'n',
--		@Group_ID = 113,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 39,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Wood/Job/Empl',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 77,
--		@Topic_E = N'Manufacture of paper and paper products (ISIC/NACE 21)',
--	@Insert_Group = 'n',
--		@Group_ID = 113,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 39,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Paper/Job/Empl',
--	@STATE_STRUCTURE_NAME = N'F6.5';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 71, --The code isn't in line with the below codes due to filling the gap of code 71
		@Topic_E = N'Forestry (ISIC/NACE 02)',
	@Insert_Group = 'y',
		@Group_ID = 114,
		@Group_E = N'Job characteristics: Self-employed',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 39,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Forestry/Job/Self-empl',
	@STATE_STRUCTURE_NAME = N'F6.5';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 76,
		@Topic_E = N'Manufacture of wood and articles in wood (ISIC/NACE 20)',
	@Insert_Group = 'n',
		@Group_ID = 114,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 39,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Wood/Job/Self-empl',
	@STATE_STRUCTURE_NAME = N'F6.5';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 77,
		@Topic_E = N'Manufacture of paper and paper products (ISIC/NACE 21)',
	@Insert_Group = 'n',
		@Group_ID = 114,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 39,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Paper/Job/Self-empl',
	@STATE_STRUCTURE_NAME = N'F6.5';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO