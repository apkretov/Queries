USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 38,
--		@Topic_E = N'1. Boreal forest',
--	@Insert_Group = 'n',
--		@Group_ID = 66,
--		@Group_E = N'Area: Undisturbed by man (1000 ha)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 43,
--		@ReportingForm_E = N'Form 4.3b: Naturalness of forest by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'1 Boreal/Undist',
--	@STATE_STRUCTURE_NAME = N'F4.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 39,
--		@Topic_E = N'2. Hemiboreal and nemoral coniferous and mixed broadleaved-coniferous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 66,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 43,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'2 Hemiboreal/Undist',
--	@STATE_STRUCTURE_NAME = N'F4.3b';
-- 
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 40,
--		@Topic_E = N'3. Alpine forest',
--	@Insert_Group = 'n',
--		@Group_ID = 66,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 43,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'3 Alpine/Undist',
--	@STATE_STRUCTURE_NAME = N'F4.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 41,
--		@Topic_E = N'4. Acidophilous oak and oak-birch forest',
--	@Insert_Group = 'n',
--		@Group_ID = 66,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 43,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'4 Acidophilous/Undist',
--	@STATE_STRUCTURE_NAME = N'F4.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 42,
--		@Topic_E = N'5. Mesophytic deciduous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 66,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 43,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'5 Mesophytic/Undist',
--	@STATE_STRUCTURE_NAME = N'F4.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 43,
--		@Topic_E = N'6. Beech forest',
--	@Insert_Group = 'n',
--		@Group_ID = 66,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 43,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'6 Beech/Undist',
--	@STATE_STRUCTURE_NAME = N'F4.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 44,
--		@Topic_E = N'7. Mountainous beech forest',
--	@Insert_Group = 'n',
--		@Group_ID = 66,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 43,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'7 Mountainous/Undist',
--	@STATE_STRUCTURE_NAME = N'F4.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 45,
--		@Topic_E = N'8. Thermophilous deciduous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 66,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 43,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'8 Thermophilous/Undist',
--	@STATE_STRUCTURE_NAME = N'F4.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 46,
--		@Topic_E = N'9. Broadleaved evergreen forest',
--	@Insert_Group = 'n',
--		@Group_ID = 66,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 43,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'9 Brd evergreen/Undist',
--	@STATE_STRUCTURE_NAME = N'F4.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 47,
--		@Topic_E = N'10. Coniferous forests of the Mediterranean, Anatolian and Macaronesian regions',
--	@Insert_Group = 'n',
--		@Group_ID = 66,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 43,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'10 Conifer/Undist',
--	@STATE_STRUCTURE_NAME = N'F4.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 48,
--		@Topic_E = N'11. Mire and swamp forest',
--	@Insert_Group = 'n',
--		@Group_ID = 66,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 43,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'11 Mire/Undist',
--	@STATE_STRUCTURE_NAME = N'F4.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 49,
--		@Topic_E = N'12. Floodplain forest',
--	@Insert_Group = 'n',
--		@Group_ID = 66,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 43,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'12 Floodplain/Undist',
--	@STATE_STRUCTURE_NAME = N'F4.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 50,
--		@Topic_E = N'13. Non-riverine alder, birch or aspen forest',
--	@Insert_Group = 'n',
--		@Group_ID = 66,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 43,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'13 Non-riverine/Undist',
--	@STATE_STRUCTURE_NAME = N'F4.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 51,
--		@Topic_E = N'14. Introduced tree species forest',
--	@Insert_Group = 'n',
--		@Group_ID = 66,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 43,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'14 Introduced/Undist',
--	@STATE_STRUCTURE_NAME = N'F4.3b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 52,
--		@Topic_E = N'Unclassified stocked forest',
--	@Insert_Group = 'n',
--		@Group_ID = 66,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 43,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Unclassified/Undist',
--	@STATE_STRUCTURE_NAME = N'F4.3b';






EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 38,
		@Topic_E = N'1. Boreal forest',
	@Insert_Group = 'n',
		@Group_ID = 67,
		@Group_E = N'Area: Semi-natural (1000 ha)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'1 Boreal/Semi-nat',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 39,
		@Topic_E = N'2. Hemiboreal and nemoral coniferous and mixed broadleaved-coniferous forest',
	@Insert_Group = 'n',
		@Group_ID = 67,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'2 Hemiboreal/Semi-nat',
	@STATE_STRUCTURE_NAME = N'F4.3b';
 
EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 40,
		@Topic_E = N'3. Alpine forest',
	@Insert_Group = 'n',
		@Group_ID = 67,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'3 Alpine/Semi-nat',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 41,
		@Topic_E = N'4. Acidophilous oak and oak-birch forest',
	@Insert_Group = 'n',
		@Group_ID = 67,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'4 Acidophilous/Semi-nat',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 42,
		@Topic_E = N'5. Mesophytic deciduous forest',
	@Insert_Group = 'n',
		@Group_ID = 67,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'5 Mesophytic/Semi-nat',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 43,
		@Topic_E = N'6. Beech forest',
	@Insert_Group = 'n',
		@Group_ID = 67,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'6 Beech/Semi-nat',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 44,
		@Topic_E = N'7. Mountainous beech forest',
	@Insert_Group = 'n',
		@Group_ID = 67,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'7 Mountainous/Semi-nat',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 45,
		@Topic_E = N'8. Thermophilous deciduous forest',
	@Insert_Group = 'n',
		@Group_ID = 67,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'8 Thermophilous/Semi-nat',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 46,
		@Topic_E = N'9. Broadleaved evergreen forest',
	@Insert_Group = 'n',
		@Group_ID = 67,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'9 Brd evergreen/Semi-nat',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 47,
		@Topic_E = N'10. Coniferous forests of the Mediterranean, Anatolian and Macaronesian regions',
	@Insert_Group = 'n',
		@Group_ID = 67,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'10 Conifer/Semi-nat',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 48,
		@Topic_E = N'11. Mire and swamp forest',
	@Insert_Group = 'n',
		@Group_ID = 67,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'11 Mire/Semi-nat',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 49,
		@Topic_E = N'12. Floodplain forest',
	@Insert_Group = 'n',
		@Group_ID = 67,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'12 Floodplain/Semi-nat',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 50,
		@Topic_E = N'13. Non-riverine alder, birch or aspen forest',
	@Insert_Group = 'n',
		@Group_ID = 67,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'13 Non-riverine/Semi-nat',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 51,
		@Topic_E = N'14. Introduced tree species forest',
	@Insert_Group = 'n',
		@Group_ID = 67,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'14 Introduced/Semi-nat',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 52,
		@Topic_E = N'Unclassified stocked forest',
	@Insert_Group = 'n',
		@Group_ID = 67,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Unclassified/Semi-nat',
	@STATE_STRUCTURE_NAME = N'F4.3b';






EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 38,
		@Topic_E = N'1. Boreal forest',
	@Insert_Group = 'n',
		@Group_ID = 68,
		@Group_E = N'Area: Plantations (1000 ha)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'1 Boreal/Plantation',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 39,
		@Topic_E = N'2. Hemiboreal and nemoral coniferous and mixed broadleaved-coniferous forest',
	@Insert_Group = 'n',
		@Group_ID = 68,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'2 Hemiboreal/Plantation',
	@STATE_STRUCTURE_NAME = N'F4.3b';
 
EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 40,
		@Topic_E = N'3. Alpine forest',
	@Insert_Group = 'n',
		@Group_ID = 68,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'3 Alpine/Plantation',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 41,
		@Topic_E = N'4. Acidophilous oak and oak-birch forest',
	@Insert_Group = 'n',
		@Group_ID = 68,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'4 Acidophilous/Plantation',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 42,
		@Topic_E = N'5. Mesophytic deciduous forest',
	@Insert_Group = 'n',
		@Group_ID = 68,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'5 Mesophytic/Plantation',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 43,
		@Topic_E = N'6. Beech forest',
	@Insert_Group = 'n',
		@Group_ID = 68,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'6 Beech/Plantation',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 44,
		@Topic_E = N'7. Mountainous beech forest',
	@Insert_Group = 'n',
		@Group_ID = 68,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'7 Mountainous/Plantation',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 45,
		@Topic_E = N'8. Thermophilous deciduous forest',
	@Insert_Group = 'n',
		@Group_ID = 68,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'8 Thermophilous/Plantation',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 46,
		@Topic_E = N'9. Broadleaved evergreen forest',
	@Insert_Group = 'n',
		@Group_ID = 68,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'9 Brd evergreen/Plantation',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 47,
		@Topic_E = N'10. Coniferous forests of the Mediterranean, Anatolian and Macaronesian regions',
	@Insert_Group = 'n',
		@Group_ID = 68,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'10 Conifer/Plantation',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 48,
		@Topic_E = N'11. Mire and swamp forest',
	@Insert_Group = 'n',
		@Group_ID = 68,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'11 Mire/Plantation',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 49,
		@Topic_E = N'12. Floodplain forest',
	@Insert_Group = 'n',
		@Group_ID = 68,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'12 Floodplain/Plantation',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 50,
		@Topic_E = N'13. Non-riverine alder, birch or aspen forest',
	@Insert_Group = 'n',
		@Group_ID = 68,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'13 Non-riverine/Plantation',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 51,
		@Topic_E = N'14. Introduced tree species forest',
	@Insert_Group = 'n',
		@Group_ID = 68,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'14 Introduced/Plantation',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 52,
		@Topic_E = N'Unclassified stocked forest',
	@Insert_Group = 'n',
		@Group_ID = 68,
		@Group_E = N'-',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 43,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Unclassified/Plantation',
	@STATE_STRUCTURE_NAME = N'F4.3b';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO