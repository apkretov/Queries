USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.
EXECUTE usp_INSERT_DATA_Excluded N'-'; --Insert the excluded data.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 34,
--		@Topic_E = N'Exports of forest products',
--	@Insert_Group = 'y',
--		@Group_ID = 17,
--		@Group_E = N'Quantity (million m3 RWE)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 8,
--		@ReportingForm_E = N'Indicator 6.8: Trade in wood',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'078',
--	@TERM_NAME = N'Exports of forest products in million m3 RWE',
--	@STATE_STRUCTURE_NAME = N'A6.8a';
 
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 34,
--		@Topic_E = N'Exports of forest products',
--	@Insert_Group = 'y',
--		@Group_ID = 18,
--		@Group_E = N'Value (million euro)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 8,
--		@ReportingForm_E = N'Indicator 6.8: Trade in wood',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'079',
--	@TERM_NAME = N'Exports of forest products in million euro',
--	@STATE_STRUCTURE_NAME = N'A6.8c';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 35,
--		@Topic_E = N'Imports of forest products',
--	@Insert_Group = 'n',
--		@Group_ID = 17,
--		@Group_E = N'Quantity (million m3 RWE)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 8,
--		@ReportingForm_E = N'Indicator 6.8: Trade in wood',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'080',
--	@TERM_NAME = N'Imports of forest products in million m3 RWE',
--	@STATE_STRUCTURE_NAME = N'A6.8b';
-- 
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 35,
--		@Topic_E = N'Imports of forest products',
--	@Insert_Group = 'n',
--		@Group_ID = 18,
--		@Group_E = N'Value (million euro)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 8,
--		@ReportingForm_E = N'Indicator 6.8: Trade in wood',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'081',
--	@TERM_NAME = N'Imports of forest products in million euro',
--	@STATE_STRUCTURE_NAME = N'A6.8d';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO