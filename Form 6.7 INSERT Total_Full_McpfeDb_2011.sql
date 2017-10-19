USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.
EXECUTE usp_INSERT_DATA_Excluded N'-'; --Insert the excluded data.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 33,
--		@Topic_E = N'Consumption of forest products',
--	@Insert_Group = 'y',
--		@Group_ID = 16,
--		@Group_E = N'Quantity (m3 RWE per 1000 population)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 7,
--		@ReportingForm_E = N'Indicator 6.7: Wood consumption',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'077',
--	@TERM_NAME = N'Consumption of forest products in m3 RWE per 1000 population',
--	@STATE_STRUCTURE_NAME = N'A6.7';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO