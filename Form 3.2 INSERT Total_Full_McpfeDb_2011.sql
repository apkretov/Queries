USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.
EXECUTE usp_INSERT_DATA_Excluded N'.'; --Insert the excluded data.

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n', --'y',
		@Topic_ID = 57,
		@Topic_E = N'Total removals',
	@Insert_Group = 'n', --'y',
		@Group_ID = 50,
		@Group_E = N'Total Volume of removals (1000 m³ u.b.)',
	@Insert_ReportingForm = 'y',
		@ReportingForm_ID = 17,
		@ReportingForm_E = N'Form 3.2: Roundwood - Removals',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'176',
	@TERM_NAME = N'Removals total/Total volume',
	@STATE_STRUCTURE_NAME = N'F3.2';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n', --'y',
		@Topic_ID = 58,
		@Topic_E = N'Marketed removals',
	@Insert_Group = 'n',
		@Group_ID = 50,
		@Group_E = N'Total Volume of removals (1000 m³ u.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 17,
		@ReportingForm_E = N'Form 3.2: Roundwood - Removals',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'177',
	@TERM_NAME = N'Removals marketed/Total volume',
	@STATE_STRUCTURE_NAME = N'F3.2';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n', --'y',
		@Topic_ID = 59,
		@Topic_E = N'Total removals from forest',
	@Insert_Group = 'n',
		@Group_ID = 50,
		@Group_E = N'Total Volume of removals (1000 m³ u.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 17,
		@ReportingForm_E = N'Form 3.2: Roundwood - Removals',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'178',
	@TERM_NAME = N'Removals forest/Total volume',
	@STATE_STRUCTURE_NAME = N'F3.2';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 57,
		@Topic_E = N'Total removals',
	@Insert_Group = 'n', --'y',
		@Group_ID = 51,
		@Group_E = N'Industrial roundwood: Volume (1000 m³ u.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 17,
		@ReportingForm_E = N'Form 3.2: Roundwood - Removals',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'179',
	@TERM_NAME = N'Removals total/Ind roundwood/Volume',
	@STATE_STRUCTURE_NAME = N'F3.2';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 58,
		@Topic_E = N'Marketed removals',
	@Insert_Group = 'n',
		@Group_ID = 51,
		@Group_E = N'Industrial roundwood: Volume (1000 m³ u.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 17,
		@ReportingForm_E = N'Form 3.2: Roundwood - Removals',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'180',
	@TERM_NAME = N'Removals marketed/Ind roundwood/Volume',
	@STATE_STRUCTURE_NAME = N'F3.2';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 59,
		@Topic_E = N'Total removals from forest',
	@Insert_Group = 'n',
		@Group_ID = 51,
		@Group_E = N'Industrial roundwood: Volume (1000 m³ u.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 17,
		@ReportingForm_E = N'Form 3.2: Roundwood - Removals',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'181',
	@TERM_NAME = N'Removals forest/Ind roundwood/Volume',
	@STATE_STRUCTURE_NAME = N'F3.2';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 57,
		@Topic_E = N'Total removals',
	@Insert_Group = 'n', --'y',
		@Group_ID = 52,
		@Group_E = N'Industrial roundwood: Value (1000 Euro/ECU)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 17,
		@ReportingForm_E = N'Form 3.2: Roundwood - Removals',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'182',
	@TERM_NAME = N'Removals total/Ind roundwood/Value',
	@STATE_STRUCTURE_NAME = N'F3.2';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 58,
		@Topic_E = N'Marketed removals',
	@Insert_Group = 'n',
		@Group_ID = 52,
		@Group_E = N'Industrial roundwood: Value (1000 Euro/ECU)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 17,
		@ReportingForm_E = N'Form 3.2: Roundwood - Removals',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'183',
	@TERM_NAME = N'Removals marketed/Ind roundwood/Value',
	@STATE_STRUCTURE_NAME = N'F3.2';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 59,
		@Topic_E = N'Total removals from forest',
	@Insert_Group = 'n',
		@Group_ID = 52,
		@Group_E = N'Industrial roundwood: Value (1000 Euro/ECU)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 17,
		@ReportingForm_E = N'Form 3.2: Roundwood - Removals',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'184',
	@TERM_NAME = N'Removals forest/Ind roundwood/Value',
	@STATE_STRUCTURE_NAME = N'F3.2';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 57,
		@Topic_E = N'Total removals',
	@Insert_Group = 'n', --'y',
		@Group_ID = 53,
		@Group_E = N'Woodfuel: Volume (1000 m³ u.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 17,
		@ReportingForm_E = N'Form 3.2: Roundwood - Removals',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'185',
	@TERM_NAME = N'Removals total/Woodfuel/Volume',
	@STATE_STRUCTURE_NAME = N'F3.2';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 58,
		@Topic_E = N'Marketed removals',
	@Insert_Group = 'n',
		@Group_ID = 53,
		@Group_E = N'Woodfuel: Volume (1000 m³ u.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 17,
		@ReportingForm_E = N'Form 3.2: Roundwood - Removals',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'186',
	@TERM_NAME = N'Removals marketed/Woodfuel/Volume',
	@STATE_STRUCTURE_NAME = N'F3.2';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 59,
		@Topic_E = N'Total removals from forest',
	@Insert_Group = 'n',
		@Group_ID = 53,
		@Group_E = N'Woodfuel: Volume (1000 m³ u.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 17,
		@ReportingForm_E = N'Form 3.2: Roundwood - Removals',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'187',
	@TERM_NAME = N'Removals forest/Woodfuel/Volume',
	@STATE_STRUCTURE_NAME = N'F3.2';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 57,
		@Topic_E = N'Total removals',
	@Insert_Group = 'n', --'y',
		@Group_ID = 54,
		@Group_E = N'Woodfuel: Value (1000 Euro/ECU)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 17,
		@ReportingForm_E = N'Form 3.2: Roundwood - Removals',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'188',
	@TERM_NAME = N'Removals total/Woodfuel/Value',
	@STATE_STRUCTURE_NAME = N'F3.2';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 58,
		@Topic_E = N'Marketed removals',
	@Insert_Group = 'n',
		@Group_ID = 54,
		@Group_E = N'Woodfuel: Value (1000 Euro/ECU)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 17,
		@ReportingForm_E = N'Form 3.2: Roundwood - Removals',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'189',
	@TERM_NAME = N'Removals marketed/Woodfuel/Value',
	@STATE_STRUCTURE_NAME = N'F3.2';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 59,
		@Topic_E = N'Total removals from forest',
	@Insert_Group = 'n',
		@Group_ID = 54,
		@Group_E = N'Woodfuel: Value (1000 Euro/ECU)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 17,
		@ReportingForm_E = N'Form 3.2: Roundwood - Removals',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'190',
	@TERM_NAME = N'Removals forest/Woodfuel/Value',
	@STATE_STRUCTURE_NAME = N'F3.2';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO