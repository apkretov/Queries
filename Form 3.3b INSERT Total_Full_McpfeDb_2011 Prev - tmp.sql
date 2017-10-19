USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 27,
--		@Topic_E = N'8. Game meat',
--	@Insert_Group = 'n',
--		@Group_ID = 15,
--		@Group_E = N'Quantity (tonnes)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 6,
--		@ReportingForm_E = N'Form 3.3b: Non-wood goods (2005) - Animal products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'066',
--	@TERM_NAME = N'8. Game meat / Quantity',
--	@STATE_STRUCTURE_NAME = N'A3.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 27,
--		@Topic_E = N'8. Game meat',
--	@Insert_Group = 'n',
--		@Group_ID = 14,
--		@Group_E = N'Value (1000 ˆ)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 6,
--		@ReportingForm_E = N'Form 3.3b: Non-wood goods (2005) - Animal products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'067',
--	@TERM_NAME = N'8. Game meat / Value',
--	@STATE_STRUCTURE_NAME = N'A3.3b';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 28,
--		@Topic_E = N'9. Living animals',
--	@Insert_Group = 'n',
--		@Group_ID = 13,
--		@Group_E = N'Quantity (1000 pcs)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 6,
--		@ReportingForm_E = N'Form 3.3b: Non-wood goods (2005) - Animal products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'068',
--	@TERM_NAME = N'9. Living animals / Quantity',
--	@STATE_STRUCTURE_NAME = N'A3.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 28,
--		@Topic_E = N'9. Living animals',
--	@Insert_Group = 'n',
--		@Group_ID = 14,
--		@Group_E = N'Value (1000 ˆ)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 6,
--		@ReportingForm_E = N'Form 3.3b: Non-wood goods (2005) - Animal products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'069',
--	@TERM_NAME = N'9. Living animals / Value',
--	@STATE_STRUCTURE_NAME = N'A3.3b';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 29,
--		@Topic_E = N'10. Pelts, hides, skins and trophies',
--	@Insert_Group = 'n',
--		@Group_ID = 13,
--		@Group_E = N'Quantity (1000 pcs)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 6,
--		@ReportingForm_E = N'Form 3.3b: Non-wood goods (2005) - Animal products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'070',
--	@TERM_NAME = N'10. Pelts, hides, skins and trophies / Quantity',
--	@STATE_STRUCTURE_NAME = N'A3.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 29,
--		@Topic_E = N'10. Pelts, hides, skins and trophies',
--	@Insert_Group = 'n',
--		@Group_ID = 14,
--		@Group_E = N'Value (1000 ˆ)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 6,
--		@ReportingForm_E = N'Form 3.3b: Non-wood goods (2005) - Animal products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'071',
--	@TERM_NAME = N'10. Pelts, hides, skins and trophies / Value',
--	@STATE_STRUCTURE_NAME = N'A3.3b';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 30,
--		@Topic_E = N'11. Wild honey and bee-wax',
--	@Insert_Group = 'n',
--		@Group_ID = 15,
--		@Group_E = N'Quantity (tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 6,
--		@ReportingForm_E = N'Form 3.3b: Non-wood goods (2005) - Animal products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'072',
--	@TERM_NAME = N'11. Wild honey and bee-wax / Quantity',
--	@STATE_STRUCTURE_NAME = N'A3.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 30,
--		@Topic_E = N'11. Wild honey and bee-wax',
--	@Insert_Group = 'n',
--		@Group_ID = 14,
--		@Group_E = N'Value (1000 ˆ)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 6,
--		@ReportingForm_E = N'Form 3.3b: Non-wood goods (2005) - Animal products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'073',
--	@TERM_NAME = N'11. Wild honey and bee-wax / Value',
--	@STATE_STRUCTURE_NAME = N'A3.3b';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 31,
--		@Topic_E = N'12. Raw material for medicine, colorants',
--	@Insert_Group = 'n',
--		@Group_ID = 15,
--		@Group_E = N'Quantity (tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 6,
--		@ReportingForm_E = N'Form 3.3b: Non-wood goods (2005) - Animal products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'074',
--	@TERM_NAME = N'12. Raw material for medicine, colorants / Quantity',
--	@STATE_STRUCTURE_NAME = N'A3.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 31,
--		@Topic_E = N'12. Raw material for medicine, colorants',
--	@Insert_Group = 'n',
--		@Group_ID = 14,
--		@Group_E = N'Value (1000 ˆ)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 6,
--		@ReportingForm_E = N'Form 3.3b: Non-wood goods (2005) - Animal products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'075',
--	@TERM_NAME = N'12. Raw material for medicine, colorants / Value',
--	@STATE_STRUCTURE_NAME = N'A3.3b';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 32,
--		@Topic_E = N'13. Other animal products',
--	@Insert_Group = 'n',
--		@Group_ID = 14,
--		@Group_E = N'Value (1000 ˆ)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 6,
--		@ReportingForm_E = N'Form 3.3b: Non-wood goods (2005) - Animal products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'076',
--	@TERM_NAME = N'13. Other animal products / Value',
--	@STATE_STRUCTURE_NAME = N'A3.3b';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO