USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.
EXECUTE usp_INSERT_DATA_Excluded N'-'; --Insert the excluded data.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 83,
--		@Topic_E = N'Service provision in 2005: Ecological services',
--	@Insert_Group = 'y',
--		@Group_ID = 129,
--		@Group_E = N'Amount of service/product',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 45,
--		@ReportingForm_E = N'Form 3.4: Services - Marketed Services',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Ecological services / Amount',
--	@STATE_STRUCTURE_NAME = N'A3.4';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 83,
--		@Topic_E = N'-',
--	@Insert_Group = 'n',
--		@Group_ID = 14,
--		@Group_E = N'Value (1000 €)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 45,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Ecological services / Value',
--	@STATE_STRUCTURE_NAME = N'A3.4';
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 84,
--		@Topic_E = N'Service provision in 2005: Biospheric services',
--	@Insert_Group = 'n',
--		@Group_ID = 129,
--		@Group_E = N'Amount of service/product',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 45,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Biospheric services / Amount',
--	@STATE_STRUCTURE_NAME = N'A3.4';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 84,
--		@Topic_E = N'-',
--	@Insert_Group = 'n',
--		@Group_ID = 14,
--		@Group_E = N'Value (1000 €)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 45,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Biospheric services / Value',
--	@STATE_STRUCTURE_NAME = N'A3.4';
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 85,
--		@Topic_E = N'Service provision in 2005: Social services',
--	@Insert_Group = 'n',
--		@Group_ID = 129,
--		@Group_E = N'Amount of service/product',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 45,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Social services / Amount',
--	@STATE_STRUCTURE_NAME = N'A3.4';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 85,
--		@Topic_E = N'-',
--	@Insert_Group = 'n',
--		@Group_ID = 14,
--		@Group_E = N'Value (1000 €)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 45,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Social services / Value',
--	@STATE_STRUCTURE_NAME = N'A3.4';
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 86,
--		@Topic_E = N'Service provision in 2005: Amenity services',
--	@Insert_Group = 'n',
--		@Group_ID = 129,
--		@Group_E = N'Amount of service/product',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 45,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Amenity services / Amount',
--	@STATE_STRUCTURE_NAME = N'A3.4';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 86,
--		@Topic_E = N'-',
--	@Insert_Group = 'n',
--		@Group_ID = 14,
--		@Group_E = N'Value (1000 €)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 45,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Amenity services / Value',
--	@STATE_STRUCTURE_NAME = N'A3.4';


EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'y',
		@Topic_ID = 87,
		@Topic_E = N'Service provision in 2005: Other services',
	@Insert_Group = 'n',
		@Group_ID = 129,
		@Group_E = N'Amount of service/product',
	@Insert_ReportingForm = 'n',
		@ReportingForm_ID = 45,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Other services / Amount',
	@STATE_STRUCTURE_NAME = N'A3.4';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 87,
		@Topic_E = N'-',
	@Insert_Group = 'n',
		@Group_ID = 14,
		@Group_E = N'Value (1000 €)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 45,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Other services / Value',
	@STATE_STRUCTURE_NAME = N'A3.4';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO