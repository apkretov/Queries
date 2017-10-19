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
--		@Group_ID = 105,
--		@Group_E = N'Total',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 38,
--		@ReportingForm_E = N'Form 6.5a: Forest sector workforce - Employment (thousand FTE) by gender and age',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forestry/Total empl',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 76,
--		@Topic_E = N'Manufacture of wood and articles in wood (ISIC/NACE 20)',
--	@Insert_Group = 'n',
--		@Group_ID = 105,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 38,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Wood/Total empl',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 77,
--		@Topic_E = N'Manufacture of paper and paper products (ISIC/NACE 21)',
--	@Insert_Group = 'n',
--		@Group_ID = 105,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 38,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Paper/Total empl',
--	@STATE_STRUCTURE_NAME = N'F6.5';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 71, --The code isn't in line with the below codes due to filling the gap of code 71
--		@Topic_E = N'Forestry (ISIC/NACE 02)',
--	@Insert_Group = 'y',
--		@Group_ID = 106,
--		@Group_E = N'Gender: Male',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 38,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forestry/Gender/Male',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 76,
--		@Topic_E = N'Manufacture of wood and articles in wood (ISIC/NACE 20)',
--	@Insert_Group = 'n',
--		@Group_ID = 106,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 38,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Wood/Gender/Male',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 77,
--		@Topic_E = N'Manufacture of paper and paper products (ISIC/NACE 21)',
--	@Insert_Group = 'n',
--		@Group_ID = 106,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 38,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Paper/Gender/Male',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 71, --The code isn't in line with the below codes due to filling the gap of code 71
--		@Topic_E = N'Forestry (ISIC/NACE 02)',
--	@Insert_Group = 'y',
--		@Group_ID = 107,
--		@Group_E = N'Gender: Female',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 38,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forestry/Gender/Female',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 76,
--		@Topic_E = N'Manufacture of wood and articles in wood (ISIC/NACE 20)',
--	@Insert_Group = 'n',
--		@Group_ID = 107,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 38,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Wood/Gender/Female',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 77,
--		@Topic_E = N'Manufacture of paper and paper products (ISIC/NACE 21)',
--	@Insert_Group = 'n',
--		@Group_ID = 107,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 38,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Paper/Gender/Female',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 71, --The code isn't in line with the below codes due to filling the gap of code 71
--		@Topic_E = N'Forestry (ISIC/NACE 02)',
--	@Insert_Group = 'y',
--		@Group_ID = 108,
--		@Group_E = N'Age group: 15-49',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 38,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forestry/Age/15-49',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 76,
--		@Topic_E = N'Manufacture of wood and articles in wood (ISIC/NACE 20)',
--	@Insert_Group = 'n',
--		@Group_ID = 108,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 38,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Wood/Age/15-49',
--	@STATE_STRUCTURE_NAME = N'F6.5';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 77,
--		@Topic_E = N'Manufacture of paper and paper products (ISIC/NACE 21)',
--	@Insert_Group = 'n',
--		@Group_ID = 108,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 38,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Paper/Age/15-49',
--	@STATE_STRUCTURE_NAME = N'F6.5';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 71, --The code isn't in line with the below codes due to filling the gap of code 71
		@Topic_E = N'Forestry (ISIC/NACE 02)',
	@Insert_Group = 'y',
		@Group_ID = 109,
		@Group_E = N'Age group: 50+',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 38,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Forestry/Age/50+',
	@STATE_STRUCTURE_NAME = N'F6.5';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 76,
		@Topic_E = N'Manufacture of wood and articles in wood (ISIC/NACE 20)',
	@Insert_Group = 'n',
		@Group_ID = 109,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 38,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Wood/Age/50+',
	@STATE_STRUCTURE_NAME = N'F6.5';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 77,
		@Topic_E = N'Manufacture of paper and paper products (ISIC/NACE 21)',
	@Insert_Group = 'n',
		@Group_ID = 109,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 38,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Paper/Age/50+',
	@STATE_STRUCTURE_NAME = N'F6.5';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO