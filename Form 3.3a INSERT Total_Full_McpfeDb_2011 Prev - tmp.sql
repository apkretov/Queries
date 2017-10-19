USE Timber_2011 --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 147,
--		@Topic_E = N'1. Christmas trees',
--	@Insert_Group = 'y',
--		@Group_ID = 13,
--		@Group_E = N'Quantity (1000 pcs)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 5,
--		@ReportingForm_E = N'Form 3.3a: Non-wood goods (2005) - Plant products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'053',
--	@TERM_NAME = N'1. Christmas trees / Quantity',
--	@STATE_STRUCTURE_NAME = N'A3.3a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 20,
--		@Topic_E = N'1. Christmas trees',
--	@Insert_Group = 'y',
--		@Group_ID = 14,
--		@Group_E = N'Value (1000 ˆ)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 5,
--		@ReportingForm_E = N'Form 3.3a: Non-wood goods (2005) - Plant products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'054',
--	@TERM_NAME = N'1. Christmas trees / Value',
--	@STATE_STRUCTURE_NAME = N'A3.3a';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 21,
--		@Topic_E = N'2. Mushrooms and truffles',
--	@Insert_Group = 'y',
--		@Group_ID = 15,
--		@Group_E = N'Quantity (tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 5,
--		@ReportingForm_E = N'Form 3.3a: Non-wood goods (2005) - Plant products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'055',
--	@TERM_NAME = N'2. Mushrooms and truffles / Quantity',
--	@STATE_STRUCTURE_NAME = N'A3.3a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 21,
--		@Topic_E = N'2. Mushrooms and truffles',
--	@Insert_Group = 'n',
--		@Group_ID = 14,
--		@Group_E = N'Value (1000 ˆ)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 5,
--		@ReportingForm_E = N'Form 3.3a: Non-wood goods (2005) - Plant products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'056',
--	@TERM_NAME = N'2. Mushrooms and truffles / Value',
--	@STATE_STRUCTURE_NAME = N'A3.3a';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 22,
--		@Topic_E = N'3. Fruits, berries and edible nuts',
--	@Insert_Group = 'n',
--		@Group_ID = 15,
--		@Group_E = N'Quantity (tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 5,
--		@ReportingForm_E = N'Form 3.3a: Non-wood goods (2005) - Plant products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'057',
--	@TERM_NAME = N'3. Fruits, berries and edible nuts / Quantity',
--	@STATE_STRUCTURE_NAME = N'A3.3a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 22,
--		@Topic_E = N'3. Fruits, berries and edible nuts',
--	@Insert_Group = 'n',
--		@Group_ID = 14,
--		@Group_E = N'Value (1000 ˆ)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 5,
--		@ReportingForm_E = N'Form 3.3a: Non-wood goods (2005) - Plant products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'058',
--	@TERM_NAME = N'3. Fruits, berries and edible nuts / Value',
--	@STATE_STRUCTURE_NAME = N'A3.3a';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 23,
--		@Topic_E = N'4. Cork',
--	@Insert_Group = 'n',
--		@Group_ID = 15,
--		@Group_E = N'Quantity (tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 5,
--		@ReportingForm_E = N'Form 3.3a: Non-wood goods (2005) - Plant products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'059',
--	@TERM_NAME = N'4. Cork / Quantity',
--	@STATE_STRUCTURE_NAME = N'A3.3a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 23,
--		@Topic_E = N'4. Cork',
--	@Insert_Group = 'n',
--		@Group_ID = 14,
--		@Group_E = N'Value (1000 ˆ)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 5,
--		@ReportingForm_E = N'Form 3.3a: Non-wood goods (2005) - Plant products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'060',
--	@TERM_NAME = N'4. Cork / Value',
--	@STATE_STRUCTURE_NAME = N'A3.3a';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 24,
--		@Topic_E = N'5. Resins, raw material- medicine, aromatic products, colorants, dyes',
--	@Insert_Group = 'n',
--		@Group_ID = 15,
--		@Group_E = N'Quantity (tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 5,
--		@ReportingForm_E = N'Form 3.3a: Non-wood goods (2005) - Plant products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'061',
--	@TERM_NAME = N'5. Resins, raw material- medicine, aromatic products, colorants, dyes / Quantity',
--	@STATE_STRUCTURE_NAME = N'A3.3a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 24,
--		@Topic_E = N'5. Resins, raw material- medicine, aromatic products, colorants, dyes',
--	@Insert_Group = 'n',
--		@Group_ID = 14,
--		@Group_E = N'Value (1000 ˆ)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 5,
--		@ReportingForm_E = N'Form 3.3a: Non-wood goods (2005) - Plant products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'062',
--	@TERM_NAME = N'5. Resins, raw material- medicine, aromatic products, colorants, dyes / Value',
--	@STATE_STRUCTURE_NAME = N'A3.3a';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 25,
--		@Topic_E = N'6. Decorative foliage, incl. ornamental plants (mosses,..)',
--	@Insert_Group = 'n',
--		@Group_ID = 15,
--		@Group_E = N'Quantity (tonnes)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 5,
--		@ReportingForm_E = N'Form 3.3a: Non-wood goods (2005) - Plant products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'063',
--	@TERM_NAME = N'6. Decorative foliage, incl. ornamental plants (mosses,..) / Quantity',
--	@STATE_STRUCTURE_NAME = N'A3.3a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 25,
--		@Topic_E = N'6. Decorative foliage, incl. ornamental plants (mosses,..)',
--	@Insert_Group = 'n',
--		@Group_ID = 14,
--		@Group_E = N'Value (1000 ˆ)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 5,
--		@ReportingForm_E = N'Form 3.3a: Non-wood goods (2005) - Plant products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'064',
--	@TERM_NAME = N'6. Decorative foliage, incl. ornamental plants (mosses,..) / Value',
--	@STATE_STRUCTURE_NAME = N'A3.3a';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 26,
--		@Topic_E = N'7. Other plant products',
--	@Insert_Group = 'n',
--		@Group_ID = 14,
--		@Group_E = N'Value (1000 ˆ)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 5,
--		@ReportingForm_E = N'Form 3.3a: Non-wood goods (2005) - Plant products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'065',
--	@TERM_NAME = N'7. Other plant products / Value',
--	@STATE_STRUCTURE_NAME = N'A3.3a';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO