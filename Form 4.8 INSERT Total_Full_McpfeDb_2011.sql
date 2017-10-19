USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 65,
--		@Topic_E = N'Trees',
--	@Insert_Group = 'y',
--		@Group_ID = 74,
--		@Group_E = N'Total of taxa (Absolute number)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Tree/Total taxa',
--	@STATE_STRUCTURE_NAME = N'F4.8';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 66,
--		@Topic_E = N'Birds',
--	@Insert_Group = 'n',
--		@Group_ID = 74,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Bird/Total taxa',
--	@STATE_STRUCTURE_NAME = N'F4.8';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 67,
--		@Topic_E = N'Mammals',
--	@Insert_Group = 'n',
--		@Group_ID = 74,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Mammal/Total taxa',
--	@STATE_STRUCTURE_NAME = N'F4.8';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 68,
--		@Topic_E = N'Other vertebrates',
--	@Insert_Group = 'n',
--		@Group_ID = 74,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Other vert/Total taxa',
--	@STATE_STRUCTURE_NAME = N'F4.8';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 69,
--		@Topic_E = N'Invertebrates',
--	@Insert_Group = 'n',
--		@Group_ID = 74,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Invertebrat/Total taxa',
--	@STATE_STRUCTURE_NAME = N'F4.8';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 70,
--		@Topic_E = N'Vascular plants',
--	@Insert_Group = 'n',
--		@Group_ID = 74,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Vasc plant/Total taxa',
--	@STATE_STRUCTURE_NAME = N'F4.8';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'y',
--		@Topic_ID = 72,
--		@Topic_E = N'Cryptogams and fungi',
--	@Insert_Group = 'n',
--		@Group_ID = 74,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Fungi/Total taxa',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--
--
--
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 65,
--		@Topic_E = N'Trees',
--	@Insert_Group = 'y',
--		@Group_ID = 75,
--		@Group_E = N'Threatened forest species: Vulnerable (Absolute number)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Tree/Vuln',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 66,
--		@Topic_E = N'Birds',
--	@Insert_Group = 'n',
--		@Group_ID = 75,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Bird/Vuln',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 67,
--		@Topic_E = N'Mammals',
--	@Insert_Group = 'n',
--		@Group_ID = 75,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Mammal/Vuln',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 68,
--		@Topic_E = N'Other vertebrates',
--	@Insert_Group = 'n',
--		@Group_ID = 75,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Other vert/Vuln',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 69,
--		@Topic_E = N'Invertebrates',
--	@Insert_Group = 'n',
--		@Group_ID = 75,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Invertebrat/Vuln',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 70,
--		@Topic_E = N'Vascular plants',
--	@Insert_Group = 'n',
--		@Group_ID = 75,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Vasc plant/Vuln',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 72,
--		@Topic_E = N'Cryptogams and fungi',
--	@Insert_Group = 'n',
--		@Group_ID = 75,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Fungi/Vuln',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--
--
--
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 65,
--		@Topic_E = N'Trees',
--	@Insert_Group = 'y',
--		@Group_ID = 76,
--		@Group_E = N'Threatened forest species: Endangered (Absolute number)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Tree/End',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 66,
--		@Topic_E = N'Birds',
--	@Insert_Group = 'n',
--		@Group_ID = 76,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Bird/End',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 67,
--		@Topic_E = N'Mammals',
--	@Insert_Group = 'n',
--		@Group_ID = 76,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Mammal/End',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 68,
--		@Topic_E = N'Other vertebrates',
--	@Insert_Group = 'n',
--		@Group_ID = 76,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Other vert/End',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 69,
--		@Topic_E = N'Invertebrates',
--	@Insert_Group = 'n',
--		@Group_ID = 76,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Invertebrat/End',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 70,
--		@Topic_E = N'Vascular plants',
--	@Insert_Group = 'n',
--		@Group_ID = 76,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Vasc plant/End',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 72,
--		@Topic_E = N'Cryptogams and fungi',
--	@Insert_Group = 'n',
--		@Group_ID = 76,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Fungi/End',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--
--
--
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 65,
--		@Topic_E = N'Trees',
--	@Insert_Group = 'y',
--		@Group_ID = 77,
--		@Group_E = N'Threatened forest species: Critically endangered (Absolute number)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Tree/Crit end',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 66,
--		@Topic_E = N'Birds',
--	@Insert_Group = 'n',
--		@Group_ID = 77,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Bird/Crit end',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 67,
--		@Topic_E = N'Mammals',
--	@Insert_Group = 'n',
--		@Group_ID = 77,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Mammal/Crit end',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 68,
--		@Topic_E = N'Other vertebrates',
--	@Insert_Group = 'n',
--		@Group_ID = 77,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Other vert/Crit end',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 69,
--		@Topic_E = N'Invertebrates',
--	@Insert_Group = 'n',
--		@Group_ID = 77,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Invertebrat/Crit end',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 70,
--		@Topic_E = N'Vascular plants',
--	@Insert_Group = 'n',
--		@Group_ID = 77,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Vasc plant/Crit end',
--	@STATE_STRUCTURE_NAME = N'F4.8';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 72,
--		@Topic_E = N'Cryptogams and fungi',
--	@Insert_Group = 'n',
--		@Group_ID = 77,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 29,
--		@ReportingForm_E = N'Form 4.8: Threatened forest species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Fungi/Crit end',
--	@STATE_STRUCTURE_NAME = N'F4.8';






EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 65,
		@Topic_E = N'Trees',
	@Insert_Group = 'y',
		@Group_ID = 78,
		@Group_E = N'Threatened forest species: Extinct in the wild (Absolute number)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 29,
		@ReportingForm_E = N'Form 4.8: Threatened forest species',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Tree/Extinct',
	@STATE_STRUCTURE_NAME = N'F4.8';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 66,
		@Topic_E = N'Birds',
	@Insert_Group = 'n',
		@Group_ID = 78,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 29,
		@ReportingForm_E = N'Form 4.8: Threatened forest species',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Bird/Extinct',
	@STATE_STRUCTURE_NAME = N'F4.8';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 67,
		@Topic_E = N'Mammals',
	@Insert_Group = 'n',
		@Group_ID = 78,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 29,
		@ReportingForm_E = N'Form 4.8: Threatened forest species',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Mammal/Extinct',
	@STATE_STRUCTURE_NAME = N'F4.8';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 68,
		@Topic_E = N'Other vertebrates',
	@Insert_Group = 'n',
		@Group_ID = 78,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 29,
		@ReportingForm_E = N'Form 4.8: Threatened forest species',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Other vert/Extinct',
	@STATE_STRUCTURE_NAME = N'F4.8';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 69,
		@Topic_E = N'Invertebrates',
	@Insert_Group = 'n',
		@Group_ID = 78,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 29,
		@ReportingForm_E = N'Form 4.8: Threatened forest species',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Invertebrat/Extinct',
	@STATE_STRUCTURE_NAME = N'F4.8';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 70,
		@Topic_E = N'Vascular plants',
	@Insert_Group = 'n',
		@Group_ID = 78,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 29,
		@ReportingForm_E = N'Form 4.8: Threatened forest species',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Vasc plant/Extinct',
	@STATE_STRUCTURE_NAME = N'F4.8';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 72,
		@Topic_E = N'Cryptogams and fungi',
	@Insert_Group = 'n',
		@Group_ID = 78,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 29,
		@ReportingForm_E = N'Form 4.8: Threatened forest species',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Fungi/Extinct',
	@STATE_STRUCTURE_NAME = N'F4.8';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
COMMIT TRANSACTION;
--ROLLBACK TRANSACTION;
GO