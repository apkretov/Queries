USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.
EXECUTE usp_INSERT_DATA_Excluded N'.'; --Insert the excluded data.
EXECUTE usp_INSERT_DATA_Excluded N' (data not provided)';
EXECUTE usp_INSERT_DATA_Excluded N'n. a.';
EXECUTE usp_INSERT_DATA_Excluded N'n.d.';
EXECUTE usp_INSERT_DATA_Excluded N'n..a.';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 71, --The code isn't in line with the below codes due to filling the gap of code 71
--		@Topic_E = N'Forestry (ISIC/NACE 02)',
--	@Insert_Group = 'y',
--		@Group_ID = 100,
--		@Group_E = N'Gross Value Added: Euro/ECU (million)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 35,
--		@ReportingForm_E = N'Form 6.2: Contribution of forest sector to GDP - Gross Value Added',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forestry/GVA',
--	@STATE_STRUCTURE_NAME = N'F6.2';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 76,
--		@Topic_E = N'Manufacture of wood and articles in wood (ISIC/NACE 20)',
--	@Insert_Group = 'n',
--		@Group_ID = 100,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 35,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Wood/GVA',
--	@STATE_STRUCTURE_NAME = N'F6.2';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 77,
--		@Topic_E = N'Manufacture of paper and paper products (ISIC/NACE 21)',
--	@Insert_Group = 'n',
--		@Group_ID = 100,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 35,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Paper/GVA',
--	@STATE_STRUCTURE_NAME = N'F6.2';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 71,
		@Topic_E = N'Forestry (ISIC/NACE 02)',
	@Insert_Group = 'y',
		@Group_ID = 101,
		@Group_E = N'Gross Value Added: % of total GVA',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 35,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Forestry/% of total',
	@STATE_STRUCTURE_NAME = N'F6.2';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 76,
		@Topic_E = N'Manufacture of wood and articles in wood (ISIC/NACE 20)',
	@Insert_Group = 'n',
		@Group_ID = 101,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 35,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Wood/% of total',
	@STATE_STRUCTURE_NAME = N'F6.2';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 77,
		@Topic_E = N'Manufacture of paper and paper products (ISIC/NACE 21)',
	@Insert_Group = 'n',
		@Group_ID = 101,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 35,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Paper/% of total',
	@STATE_STRUCTURE_NAME = N'F6.2';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO