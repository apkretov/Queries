USE Timber_2011 --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 160,
--		@Topic_E = N'Game meat (tonnes)',
--	@Insert_Group = 'n',
--		@Group_ID = 133, --15,
--		@Group_E = N'Quantity/Value', --N'Quantity (tonnes)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 6,
--		@ReportingForm_E = N'Form 3.3b: Non-wood goods (2005) - Animal products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0', --N'066',
--	@TERM_NAME = N'8. Game meat / Quantity',
--	@STATE_STRUCTURE_NAME = N'A3.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 161,
		@Topic_E = N'Game meat (1000 EUR)',
	@Insert_Group = 'n',
		@Group_ID = 133, --14,
		@Group_E = N'-', --N'Value (1000 EUR)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 6,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'067',
	@TERM_NAME = N'8. Game meat / Value',
	@STATE_STRUCTURE_NAME = N'A3.3b';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 162,
		@Topic_E = N'Living animals (1000 pcs)',
	@Insert_Group = 'n',
		@Group_ID = 133, --13,
		@Group_E = N'-', --N'Quantity (1000 pcs)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 6,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'068',
	@TERM_NAME = N'9. Living animals / Quantity',
	@STATE_STRUCTURE_NAME = N'A3.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 163,
		@Topic_E = N'Living animals (1000 EUR)',
	@Insert_Group = 'n',
		@Group_ID = 133, --14,
		@Group_E = N'-', --N'Value (1000 EUR)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 6,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'069',
	@TERM_NAME = N'9. Living animals / Value',
	@STATE_STRUCTURE_NAME = N'A3.3b';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 164,
		@Topic_E = N'Pelts, hides, skins and trophies (1000 pcs)',
	@Insert_Group = 'n',
		@Group_ID = 133, --13,
		@Group_E = N'-', --N'Quantity (1000 pcs)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 6,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'070',
	@TERM_NAME = N'10. Pelts, hides, skins and trophies / Quantity',
	@STATE_STRUCTURE_NAME = N'A3.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 165,
		@Topic_E = N'Pelts, hides, skins and trophies (1000 EUR)',
	@Insert_Group = 'n',
		@Group_ID = 133, --14,
		@Group_E = N'-', --N'Value (1000 EUR)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 6,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'071',
	@TERM_NAME = N'10. Pelts, hides, skins and trophies / Value',
	@STATE_STRUCTURE_NAME = N'A3.3b';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 166,
		@Topic_E = N'Wild honey and bee-wax (tonnes)',
	@Insert_Group = 'n',
		@Group_ID = 133, --15,
		@Group_E = N'-', --N'Quantity (tonnes)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 6,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'072',
	@TERM_NAME = N'11. Wild honey and bee-wax / Quantity',
	@STATE_STRUCTURE_NAME = N'A3.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 167,
		@Topic_E = N'Wild honey and bee-wax (1000 EUR)',
	@Insert_Group = 'n',
		@Group_ID = 133, --14,
		@Group_E = N'-', --N'Value (1000 EUR)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 6,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'073',
	@TERM_NAME = N'11. Wild honey and bee-wax / Value',
	@STATE_STRUCTURE_NAME = N'A3.3b';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 168,
		@Topic_E = N'Raw material for medicine, colorants (tonnes)',
	@Insert_Group = 'n',
		@Group_ID = 133, --15,
		@Group_E = N'-', --N'Quantity (tonnes)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 6,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'074',
	@TERM_NAME = N'12. Raw material for medicine, colorants / Quantity',
	@STATE_STRUCTURE_NAME = N'A3.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 169,
		@Topic_E = N'Raw material for medicine, colorants (1000 EUR)',
	@Insert_Group = 'n',
		@Group_ID = 133, --14,
		@Group_E = N'-', --N'Value (1000 EUR)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 6,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'075',
	@TERM_NAME = N'12. Raw material for medicine, colorants / Value',
	@STATE_STRUCTURE_NAME = N'A3.3b';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 170,
		@Topic_E = N'Other animal products (1000 EUR)',
	@Insert_Group = 'n',
		@Group_ID = 133, --14,
		@Group_E = N'-', --N'Value (1000 EUR)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 6,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', --N'076',
	@TERM_NAME = N'13. Other animal products / Value',
	@STATE_STRUCTURE_NAME = N'A3.3b';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO