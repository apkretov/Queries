USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'n', --'y', The first erroneous version commented out
--		@Group_ID = 36,
--		@Group_E = N'Volume: Total (1000 m³ o.b.)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 13,
--		@ReportingForm_E = N'Form 1.2a: Growing stock',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0', --N'137', The first erroneous version commented out
--	@TERM_NAME = N'Forest/GS total',
--	@STATE_STRUCTURE_NAME = N'F1.2a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 2,
--		@Topic_E = N'Forest available for wood supply',
--	@Insert_Group = 'n',
--		@Group_ID = 36,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 13,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0', --N'138', The first erroneous version commented out
--	@TERM_NAME = N'FAWS/GS total',
--	@STATE_STRUCTURE_NAME = N'F1.2a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 36,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 13,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0', --N'139', The first erroneous version commented out
--	@TERM_NAME = N'OWL/GS total',
--	@STATE_STRUCTURE_NAME = N'F1.2a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 36,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 13,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'FOWL/GS total',
--	@STATE_STRUCTURE_NAME = N'F1.2a';
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'n',
--		@Group_ID = 37,
--		@Group_E = N'Volume: Coniferous (1000 m³ o.b.)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 13,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Forest/GS coniferous',
--	@STATE_STRUCTURE_NAME = N'F1.2a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 2,
--		@Topic_E = N'Forest available for wood supply',
--	@Insert_Group = 'n',
--		@Group_ID = 37,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 13,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'FAWS/GS coniferous',
--	@STATE_STRUCTURE_NAME = N'F1.2a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 37,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 13,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'OWL/GS coniferous',
--	@STATE_STRUCTURE_NAME = N'F1.2a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 37,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 13,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'FOWL/GS coniferous',
--	@STATE_STRUCTURE_NAME = N'F1.2a';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 1,
		@Topic_E = N'Forest',
	@Insert_Group = 'n',
		@Group_ID = 38,
		@Group_E = N'Volume: Broadleaved (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 13,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Forest/GS broadleaved',
	@STATE_STRUCTURE_NAME = N'F1.2a';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 2,
		@Topic_E = N'Forest available for wood supply',
	@Insert_Group = 'n',
		@Group_ID = 38,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 13,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FAWS/GS broadleaved',
	@STATE_STRUCTURE_NAME = N'F1.2a';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 3,
		@Topic_E = N'Other wooded land',
	@Insert_Group = 'n',
		@Group_ID = 38,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 13,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'OWL/GS broadleaved',
	@STATE_STRUCTURE_NAME = N'F1.2a';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 4,
		@Topic_E = N'Total forest and other wooded land',
	@Insert_Group = 'n',
		@Group_ID = 38,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 13,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'FOWL/GS broadleaved',
	@STATE_STRUCTURE_NAME = N'F1.2a';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO