USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.
EXECUTE usp_INSERT_DATA_Excluded N'.'; --Insert the excluded data.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 71, --The code isn't in line with the below codes due to filling the gap of code 71
--		@Topic_E = N'Forestry (ISIC/NACE 02)',
--	@Insert_Group = 'y',
--		@Group_ID = 115,
--		@Group_E = N'Fatal occupational accidents: Number',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 40,
--		@ReportingForm_E = N'Form 6.6: Occupational safety and health - Occupational accidents',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forestry/Fatal acc #',
--	@STATE_STRUCTURE_NAME = N'F6.6';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 71, --The code isn't in line with the below codes due to filling the gap of code 71
		@Topic_E = N'Forestry (ISIC/NACE 02)',
	@Insert_Group = 'y',
		@Group_ID = 116,
		@Group_E = N'Fatal occupational accidents: Annual rate per 1000 workers',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 40,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Forestry/Fatal acc rate',
	@STATE_STRUCTURE_NAME = N'F6.6';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 71, --The code isn't in line with the below codes due to filling the gap of code 71
		@Topic_E = N'Forestry (ISIC/NACE 02)',
	@Insert_Group = 'y',
		@Group_ID = 117,
		@Group_E = N'Non-fatal occupational accidents: Number',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 40,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Forestry/Nonfatal acc #',
	@STATE_STRUCTURE_NAME = N'F6.6';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 71, --The code isn't in line with the below codes due to filling the gap of code 71
		@Topic_E = N'Forestry (ISIC/NACE 02)',
	@Insert_Group = 'y',
		@Group_ID = 118,
		@Group_E = N'Non-fatal occupational accidents: Annual rate per 1000 workers',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 40,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Forestry/Nonfatal acc rate',
	@STATE_STRUCTURE_NAME = N'F6.6';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO