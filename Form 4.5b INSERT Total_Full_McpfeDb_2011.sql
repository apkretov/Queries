USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 38,
--		@Topic_E = N'1. Boreal forest',
--	@Insert_Group = 'n',
--		@Group_ID = 71,
--		@Group_E = N'Volume of deadwood: Total (m³/ha)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'Form 4.5b: Deadwood on forest by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'1 Boreal/Deadwood total',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 39,
--		@Topic_E = N'2. Hemiboreal and nemoral coniferous and mixed broadleaved-coniferous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 71,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'2 Hemiboreal/Deadwood total',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
-- 
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 40,
--		@Topic_E = N'3. Alpine forest',
--	@Insert_Group = 'n',
--		@Group_ID = 71,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'3 Alpine/Deadwood total',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 41,
--		@Topic_E = N'4. Acidophilous oak and oak-birch forest',
--	@Insert_Group = 'n',
--		@Group_ID = 71,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'4 Acidophilous/Deadwood total',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 42,
--		@Topic_E = N'5. Mesophytic deciduous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 71,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'5 Mesophytic/Deadwood total',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 43,
--		@Topic_E = N'6. Beech forest',
--	@Insert_Group = 'n',
--		@Group_ID = 71,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'6 Beech/Deadwood total',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 44,
--		@Topic_E = N'7. Mountainous beech forest',
--	@Insert_Group = 'n',
--		@Group_ID = 71,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'7 Mountainous/Deadwood total',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 45,
--		@Topic_E = N'8. Thermophilous deciduous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 71,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'8 Thermophilous/Deadwood total',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 46,
--		@Topic_E = N'9. Broadleaved evergreen forest',
--	@Insert_Group = 'n',
--		@Group_ID = 71,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'9 Brd evergreen/Deadwood total',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 47,
--		@Topic_E = N'10. Coniferous forests of the Mediterranean, Anatolian and Macaronesian regions',
--	@Insert_Group = 'n',
--		@Group_ID = 71,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'10 Conifer/Deadwood total',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 48,
--		@Topic_E = N'11. Mire and swamp forest',
--	@Insert_Group = 'n',
--		@Group_ID = 71,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'11 Mire/Deadwood total',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 49,
--		@Topic_E = N'12. Floodplain forest',
--	@Insert_Group = 'n',
--		@Group_ID = 71,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'12 Floodplain/Deadwood total',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 50,
--		@Topic_E = N'13. Non-riverine alder, birch or aspen forest',
--	@Insert_Group = 'n',
--		@Group_ID = 71,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'13 Non-riverine/Deadwood total',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 51,
--		@Topic_E = N'14. Introduced tree species forest',
--	@Insert_Group = 'n',
--		@Group_ID = 71,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'14 Introduced/Deadwood total',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 52,
--		@Topic_E = N'Unclassified stocked forest',
--	@Insert_Group = 'n',
--		@Group_ID = 71,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Unclassified/Deadwood total',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--
--
--
--
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 38,
--		@Topic_E = N'1. Boreal forest',
--	@Insert_Group = 'n',
--		@Group_ID = 72,
--		@Group_E = N'Volume of deadwood: Standing (m³/ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'1 Boreal/Standing',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 39,
--		@Topic_E = N'2. Hemiboreal and nemoral coniferous and mixed broadleaved-coniferous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 72,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'2 Hemiboreal/Standing',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
-- 
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 40,
--		@Topic_E = N'3. Alpine forest',
--	@Insert_Group = 'n',
--		@Group_ID = 72,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'3 Alpine/Standing',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 41,
--		@Topic_E = N'4. Acidophilous oak and oak-birch forest',
--	@Insert_Group = 'n',
--		@Group_ID = 72,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'4 Acidophilous/Standing',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 42,
--		@Topic_E = N'5. Mesophytic deciduous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 72,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'5 Mesophytic/Standing',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 43,
--		@Topic_E = N'6. Beech forest',
--	@Insert_Group = 'n',
--		@Group_ID = 72,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'6 Beech/Standing',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 44,
--		@Topic_E = N'7. Mountainous beech forest',
--	@Insert_Group = 'n',
--		@Group_ID = 72,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'7 Mountainous/Standing',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 45,
--		@Topic_E = N'8. Thermophilous deciduous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 72,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'8 Thermophilous/Standing',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 46,
--		@Topic_E = N'9. Broadleaved evergreen forest',
--	@Insert_Group = 'n',
--		@Group_ID = 72,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'9 Brd evergreen/Standing',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 47,
--		@Topic_E = N'10. Coniferous forests of the Mediterranean, Anatolian and Macaronesian regions',
--	@Insert_Group = 'n',
--		@Group_ID = 72,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'10 Conifer/Standing',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 48,
--		@Topic_E = N'11. Mire and swamp forest',
--	@Insert_Group = 'n',
--		@Group_ID = 72,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'11 Mire/Standing',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 49,
--		@Topic_E = N'12. Floodplain forest',
--	@Insert_Group = 'n',
--		@Group_ID = 72,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'12 Floodplain/Standing',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 50,
--		@Topic_E = N'13. Non-riverine alder, birch or aspen forest',
--	@Insert_Group = 'n',
--		@Group_ID = 72,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'13 Non-riverine/Standing',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 51,
--		@Topic_E = N'14. Introduced tree species forest',
--	@Insert_Group = 'n',
--		@Group_ID = 72,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'14 Introduced/Standing',
--	@STATE_STRUCTURE_NAME = N'F4.5b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 52,
--		@Topic_E = N'Unclassified stocked forest',
--	@Insert_Group = 'n',
--		@Group_ID = 72,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 44,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Unclassified/Standing',
--	@STATE_STRUCTURE_NAME = N'F4.5b';






EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 38,
		@Topic_E = N'1. Boreal forest',
	@Insert_Group = 'n',
		@Group_ID = 73,
		@Group_E = N'Volume of deadwood: Lying (m³/ha)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 44,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'1 Boreal/Lying',
	@STATE_STRUCTURE_NAME = N'F4.5b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 39,
		@Topic_E = N'2. Hemiboreal and nemoral coniferous and mixed broadleaved-coniferous forest',
	@Insert_Group = 'n',
		@Group_ID = 73,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 44,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'2 Hemiboreal/Lying',
	@STATE_STRUCTURE_NAME = N'F4.5b';
 
EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 40,
		@Topic_E = N'3. Alpine forest',
	@Insert_Group = 'n',
		@Group_ID = 73,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 44,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'3 Alpine/Lying',
	@STATE_STRUCTURE_NAME = N'F4.5b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 41,
		@Topic_E = N'4. Acidophilous oak and oak-birch forest',
	@Insert_Group = 'n',
		@Group_ID = 73,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 44,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'4 Acidophilous/Lying',
	@STATE_STRUCTURE_NAME = N'F4.5b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 42,
		@Topic_E = N'5. Mesophytic deciduous forest',
	@Insert_Group = 'n',
		@Group_ID = 73,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 44,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'5 Mesophytic/Lying',
	@STATE_STRUCTURE_NAME = N'F4.5b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 43,
		@Topic_E = N'6. Beech forest',
	@Insert_Group = 'n',
		@Group_ID = 73,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 44,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'6 Beech/Lying',
	@STATE_STRUCTURE_NAME = N'F4.5b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 44,
		@Topic_E = N'7. Mountainous beech forest',
	@Insert_Group = 'n',
		@Group_ID = 73,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 44,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'7 Mountainous/Lying',
	@STATE_STRUCTURE_NAME = N'F4.5b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 45,
		@Topic_E = N'8. Thermophilous deciduous forest',
	@Insert_Group = 'n',
		@Group_ID = 73,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 44,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'8 Thermophilous/Lying',
	@STATE_STRUCTURE_NAME = N'F4.5b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 46,
		@Topic_E = N'9. Broadleaved evergreen forest',
	@Insert_Group = 'n',
		@Group_ID = 73,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 44,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'9 Brd evergreen/Lying',
	@STATE_STRUCTURE_NAME = N'F4.5b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 47,
		@Topic_E = N'10. Coniferous forests of the Mediterranean, Anatolian and Macaronesian regions',
	@Insert_Group = 'n',
		@Group_ID = 73,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 44,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'10 Conifer/Lying',
	@STATE_STRUCTURE_NAME = N'F4.5b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 48,
		@Topic_E = N'11. Mire and swamp forest',
	@Insert_Group = 'n',
		@Group_ID = 73,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 44,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'11 Mire/Lying',
	@STATE_STRUCTURE_NAME = N'F4.5b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 49,
		@Topic_E = N'12. Floodplain forest',
	@Insert_Group = 'n',
		@Group_ID = 73,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 44,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'12 Floodplain/Lying',
	@STATE_STRUCTURE_NAME = N'F4.5b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 50,
		@Topic_E = N'13. Non-riverine alder, birch or aspen forest',
	@Insert_Group = 'n',
		@Group_ID = 73,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 44,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'13 Non-riverine/Lying',
	@STATE_STRUCTURE_NAME = N'F4.5b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 51,
		@Topic_E = N'14. Introduced tree species forest',
	@Insert_Group = 'n',
		@Group_ID = 73,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 44,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'14 Introduced/Lying',
	@STATE_STRUCTURE_NAME = N'F4.5b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 52,
		@Topic_E = N'Unclassified stocked forest',
	@Insert_Group = 'n',
		@Group_ID = 73,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 44,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Unclassified/Lying',
	@STATE_STRUCTURE_NAME = N'F4.5b';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO