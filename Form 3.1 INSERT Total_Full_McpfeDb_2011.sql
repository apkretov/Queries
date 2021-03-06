USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 2,
		@Topic_E = N'Forest available for wood supply',
	@Insert_Group = 'n', --'y',
		@Group_ID = 45,
		@Group_E = N'Gross annual increment (1000 m³ o.b.)',
	@Insert_ReportingForm = 'y',
		@ReportingForm_ID = 16,
		@ReportingForm_E = N'Form 3.1: Increment and fellings',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'171',
	@TERM_NAME = N'GAI',
	@STATE_STRUCTURE_NAME = N'F3.1';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 2,
		@Topic_E = N'Forest available for wood supply',
	@Insert_Group = 'n', --'y',
		@Group_ID = 46,
		@Group_E = N'Natural losses (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 16,
		@ReportingForm_E = N'Form 3.1: Increment and fellings',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'172',
	@TERM_NAME = N'Nat loss',
	@STATE_STRUCTURE_NAME = N'F3.1';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 2,
		@Topic_E = N'Forest available for wood supply',
	@Insert_Group = 'n', --'y',
		@Group_ID = 47,
		@Group_E = N'Net annual increment (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 16,
		@ReportingForm_E = N'Form 3.1: Increment and fellings',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'173',
	@TERM_NAME = N'NAI',
	@STATE_STRUCTURE_NAME = N'F3.1';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 2,
		@Topic_E = N'Forest available for wood supply',
	@Insert_Group = 'n', --'y',
		@Group_ID = 48,
		@Group_E = N'Fellings total (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 16,
		@ReportingForm_E = N'Form 3.1: Increment and fellings',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'174',
	@TERM_NAME = N'Fellings total',
	@STATE_STRUCTURE_NAME = N'F3.1';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 2,
		@Topic_E = N'Forest available for wood supply',
	@Insert_Group = 'n', --'y',
		@Group_ID = 49,
		@Group_E = N'Fellings of natural losses (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 16,
		@ReportingForm_E = N'Form 3.1: Increment and fellings',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'175',
	@TERM_NAME = N'Fellings nat loss',
	@STATE_STRUCTURE_NAME = N'F3.1';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO