USE Timber_2011 --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 147,
--		@Topic_E = N'Christmas trees (1000 pcs)',
--	@Insert_Group = 'y',
--		@Group_ID = 133,
--		@Group_E = N'Quantity/Value',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 5,
--		@ReportingForm_E = N'Form 3.3a: Non-wood goods (2005) - Plant products / raw materials',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'053',
--	@TERM_NAME = N'1. Christmas trees / Quantity',
--	@STATE_STRUCTURE_NAME = N'A3.3a';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 148,
		@Topic_E = N'Christmas trees (1000 EUR)',
	@Insert_Group = 'n',
		@Group_ID = 133, --14,
		@Group_E = N'-', --N'Value (1000 EUR)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 5,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', -- N'054',
	@TERM_NAME = N'1. Christmas trees / Value',
	@STATE_STRUCTURE_NAME = N'A3.3a';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 149,
		@Topic_E = N'Mushrooms and truffles (tonnes)',
	@Insert_Group = 'n',
		@Group_ID = 133, --15,
		@Group_E = N'-', --N'Quantity (tonnes)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 5,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', -- N'055',
	@TERM_NAME = N'2. Mushrooms and truffles / Quantity',
	@STATE_STRUCTURE_NAME = N'A3.3a';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 150,
		@Topic_E = N'Mushrooms and truffles (1000 EUR)',
	@Insert_Group = 'n',
		@Group_ID = 133, --14,
		@Group_E = N'-', --N'Value (1000 EUR)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 5,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', -- N'056',
	@TERM_NAME = N'2. Mushrooms and truffles / Value',
	@STATE_STRUCTURE_NAME = N'A3.3a';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 151,
		@Topic_E = N'Fruits, berries and edible nuts (tonnes)',
	@Insert_Group = 'n',
		@Group_ID = 133, --15,
		@Group_E = N'-', --N'Quantity (tonnes)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 5,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', -- N'057',
	@TERM_NAME = N'3. Fruits, berries and edible nuts / Quantity',
	@STATE_STRUCTURE_NAME = N'A3.3a';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 152,
		@Topic_E = N'Fruits, berries and edible nuts (1000 EUR)',
	@Insert_Group = 'n',
		@Group_ID = 133, --14,
		@Group_E = N'-', --N'Value (1000 EUR)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 5,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', -- N'058',
	@TERM_NAME = N'3. Fruits, berries and edible nuts / Value',
	@STATE_STRUCTURE_NAME = N'A3.3a';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 153,
		@Topic_E = N'Cork (tonnes)',
	@Insert_Group = 'n',
		@Group_ID = 133, --15,
		@Group_E = N'-', --N'Quantity (tonnes)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 5,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', -- N'059',
	@TERM_NAME = N'4. Cork / Quantity',
	@STATE_STRUCTURE_NAME = N'A3.3a';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 154,
		@Topic_E = N'Cork (1000 EUR)',
	@Insert_Group = 'n',
		@Group_ID = 133, --14,
		@Group_E = N'-', --N'Value (1000 EUR)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 5,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', -- N'060',
	@TERM_NAME = N'4. Cork / Value',
	@STATE_STRUCTURE_NAME = N'A3.3a';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 155,
		@Topic_E = N'Resins, raw material- medicine, aromatic products, colorants, dyes (tonnes)',
	@Insert_Group = 'n',
		@Group_ID = 133, --15,
		@Group_E = N'-', --N'Quantity (tonnes)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 5,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', -- N'061',
	@TERM_NAME = N'5. Resins, raw material- medicine, aromatic products, colorants, dyes / Quantity',
	@STATE_STRUCTURE_NAME = N'A3.3a';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 156,
		@Topic_E = N'Resins, raw material- medicine, aromatic products, colorants, dyes (1000 EUR)',
	@Insert_Group = 'n',
		@Group_ID = 133, --14,
		@Group_E = N'-', --N'Value (1000 EUR)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 5,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', -- N'062',
	@TERM_NAME = N'5. Resins, raw material- medicine, aromatic products, colorants, dyes / Value',
	@STATE_STRUCTURE_NAME = N'A3.3a';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 157,
		@Topic_E = N'Decorative foliage, incl. ornamental plants (mosses,..) (tonnes)',
	@Insert_Group = 'n',
		@Group_ID = 133, --15,
		@Group_E = N'-', --N'Quantity (tonnes)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 5,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', -- N'063',
	@TERM_NAME = N'6. Decorative foliage, incl. ornamental plants (mosses,..) / Quantity',
	@STATE_STRUCTURE_NAME = N'A3.3a';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 158,
		@Topic_E = N'Decorative foliage, incl. ornamental plants (mosses,..) (1000 EUR)',
	@Insert_Group = 'n',
		@Group_ID = 133, --14,
		@Group_E = N'-', --N'Value (1000 EUR)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 5,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', -- N'064',
	@TERM_NAME = N'6. Decorative foliage, incl. ornamental plants (mosses,..) / Value',
	@STATE_STRUCTURE_NAME = N'A3.3a';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 159,
		@Topic_E = N'Other plant products (1000 EUR)',
	@Insert_Group = 'n',
		@Group_ID = 133, --14,
		@Group_E = N'-', --N'Value (1000 EUR)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 5,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0', -- N'065',
	@TERM_NAME = N'7. Other plant products / Value',
	@STATE_STRUCTURE_NAME = N'A3.3a';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO