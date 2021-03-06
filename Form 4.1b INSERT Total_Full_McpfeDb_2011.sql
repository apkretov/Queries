USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 38,
--		@Topic_E = N'1. Boreal forest',
--	@Insert_Group = 'n',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'y', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'499',
--	@TERM_NAME = N'1 Boreal/1',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 39,
--		@Topic_E = N'2. Hemiboreal and nemoral coniferous and mixed broadleaved-coniferous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'500',
--	@TERM_NAME = N'2 Hemiboreal/1',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
-- 
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 40,
--		@Topic_E = N'3. Alpine forest',
--	@Insert_Group = 'n',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'501',
--	@TERM_NAME = N'3 Alpine/1',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 41,
--		@Topic_E = N'4. Acidophilous oak and oak-birch forest',
--	@Insert_Group = 'n',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'502',
--	@TERM_NAME = N'4 Acidophilous/1',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 42,
--		@Topic_E = N'5. Mesophytic deciduous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'503',
--	@TERM_NAME = N'5 Mesophytic/1',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 43,
--		@Topic_E = N'6. Beech forest',
--	@Insert_Group = 'n',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'504',
--	@TERM_NAME = N'6 Beech/1',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 44,
--		@Topic_E = N'7. Mountainous beech forest',
--	@Insert_Group = 'n',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'505',
--	@TERM_NAME = N'7 Mountainous/1',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 45,
--		@Topic_E = N'8. Thermophilous deciduous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'506',
--	@TERM_NAME = N'8 Thermophilous/1',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 46,
--		@Topic_E = N'9. Broadleaved evergreen forest',
--	@Insert_Group = 'n',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'507',
--	@TERM_NAME = N'9 Brd evergreen/1',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 47,
--		@Topic_E = N'10. Coniferous forests of the Mediterranean, Anatolian and Macaronesian regions',
--	@Insert_Group = 'n',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'508',
--	@TERM_NAME = N'10 Conifer/1',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 48,
--		@Topic_E = N'11. Mire and swamp forest',
--	@Insert_Group = 'n',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'509',
--	@TERM_NAME = N'11 Mire/1',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 49,
--		@Topic_E = N'12. Floodplain forest',
--	@Insert_Group = 'n',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'510',
--	@TERM_NAME = N'12 Floodplain/1',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 50,
--		@Topic_E = N'13. Non-riverine alder, birch or aspen forest',
--	@Insert_Group = 'n',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'511',
--	@TERM_NAME = N'13 Non-riverine/1',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 51,
--		@Topic_E = N'14. Introduced tree species forest',
--	@Insert_Group = 'n',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'512',
--	@TERM_NAME = N'14 Introduced/1',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 52,
--		@Topic_E = N'Unclassified stocked forest',
--	@Insert_Group = 'n',
--		@Group_ID = 58,
--		@Group_E = N'Area with 1 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'513',
--	@TERM_NAME = N'Unclassified/1',
--	@STATE_STRUCTURE_NAME = N'F4.1b';





--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 38,
--		@Topic_E = N'1. Boreal forest',
--	@Insert_Group = 'n',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'514',
--	@TERM_NAME = N'1 Boreal/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 39,
--		@Topic_E = N'2. Hemiboreal and nemoral coniferous and mixed broadleaved-coniferous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'515',
--	@TERM_NAME = N'2 Hemiboreal/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
-- 
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 40,
--		@Topic_E = N'3. Alpine forest',
--	@Insert_Group = 'n',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'516',
--	@TERM_NAME = N'3 Alpine/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 41,
--		@Topic_E = N'4. Acidophilous oak and oak-birch forest',
--	@Insert_Group = 'n',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'517',
--	@TERM_NAME = N'4 Acidophilous/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 42,
--		@Topic_E = N'5. Mesophytic deciduous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'518',
--	@TERM_NAME = N'5 Mesophytic/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 43,
--		@Topic_E = N'6. Beech forest',
--	@Insert_Group = 'n',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'519',
--	@TERM_NAME = N'6 Beech/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 44,
--		@Topic_E = N'7. Mountainous beech forest',
--	@Insert_Group = 'n',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'520',
--	@TERM_NAME = N'7 Mountainous/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 45,
--		@Topic_E = N'8. Thermophilous deciduous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'521',
--	@TERM_NAME = N'8 Thermophilous/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 46,
--		@Topic_E = N'9. Broadleaved evergreen forest',
--	@Insert_Group = 'n',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'522',
--	@TERM_NAME = N'9 Brd evergreen/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 47,
--		@Topic_E = N'10. Coniferous forests of the Mediterranean, Anatolian and Macaronesian regions',
--	@Insert_Group = 'n',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'523',
--	@TERM_NAME = N'10 Conifer/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 48,
--		@Topic_E = N'11. Mire and swamp forest',
--	@Insert_Group = 'n',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'524',
--	@TERM_NAME = N'11 Mire/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 49,
--		@Topic_E = N'12. Floodplain forest',
--	@Insert_Group = 'n',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'525',
--	@TERM_NAME = N'12 Floodplain/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 50,
--		@Topic_E = N'13. Non-riverine alder, birch or aspen forest',
--	@Insert_Group = 'n',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'526',
--	@TERM_NAME = N'13 Non-riverine/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 51,
--		@Topic_E = N'14. Introduced tree species forest',
--	@Insert_Group = 'n',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'527',
--	@TERM_NAME = N'14 Introduced/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 52,
--		@Topic_E = N'Unclassified stocked forest',
--	@Insert_Group = 'n',
--		@Group_ID = 59,
--		@Group_E = N'Area with 2-3 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'528',
--	@TERM_NAME = N'Unclassified/2-3',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
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
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'529',
--	@TERM_NAME = N'1 Boreal/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 39,
--		@Topic_E = N'2. Hemiboreal and nemoral coniferous and mixed broadleaved-coniferous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'530',
--	@TERM_NAME = N'2 Hemiboreal/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
-- 
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 40,
--		@Topic_E = N'3. Alpine forest',
--	@Insert_Group = 'n',
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'531',
--	@TERM_NAME = N'3 Alpine/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 41,
--		@Topic_E = N'4. Acidophilous oak and oak-birch forest',
--	@Insert_Group = 'n',
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'532',
--	@TERM_NAME = N'4 Acidophilous/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 42,
--		@Topic_E = N'5. Mesophytic deciduous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'533',
--	@TERM_NAME = N'5 Mesophytic/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 43,
--		@Topic_E = N'6. Beech forest',
--	@Insert_Group = 'n',
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'534',
--	@TERM_NAME = N'6 Beech/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 44,
--		@Topic_E = N'7. Mountainous beech forest',
--	@Insert_Group = 'n',
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'535',
--	@TERM_NAME = N'7 Mountainous/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 45,
--		@Topic_E = N'8. Thermophilous deciduous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'536',
--	@TERM_NAME = N'8 Thermophilous/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 46,
--		@Topic_E = N'9. Broadleaved evergreen forest',
--	@Insert_Group = 'n',
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'537',
--	@TERM_NAME = N'9 Brd evergreen/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 47,
--		@Topic_E = N'10. Coniferous forests of the Mediterranean, Anatolian and Macaronesian regions',
--	@Insert_Group = 'n',
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'538',
--	@TERM_NAME = N'10 Conifer/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 48,
--		@Topic_E = N'11. Mire and swamp forest',
--	@Insert_Group = 'n',
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'539',
--	@TERM_NAME = N'11 Mire/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 49,
--		@Topic_E = N'12. Floodplain forest',
--	@Insert_Group = 'n',
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'540',
--	@TERM_NAME = N'12 Floodplain/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 50,
--		@Topic_E = N'13. Non-riverine alder, birch or aspen forest',
--	@Insert_Group = 'n',
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'541',
--	@TERM_NAME = N'13 Non-riverine/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 51,
--		@Topic_E = N'14. Introduced tree species forest',
--	@Insert_Group = 'n',
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'542',
--	@TERM_NAME = N'14 Introduced/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 52,
--		@Topic_E = N'Unclassified stocked forest',
--	@Insert_Group = 'n',
--		@Group_ID = 60,
--		@Group_E = N'Area with 4-5 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'543',
--	@TERM_NAME = N'Unclassified/4-5',
--	@STATE_STRUCTURE_NAME = N'F4.1b';





--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 38,
--		@Topic_E = N'1. Boreal forest',
--	@Insert_Group = 'n',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'544',
--	@TERM_NAME = N'1 Boreal/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 39,
--		@Topic_E = N'2. Hemiboreal and nemoral coniferous and mixed broadleaved-coniferous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'545',
--	@TERM_NAME = N'2 Hemiboreal/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
-- 
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 40,
--		@Topic_E = N'3. Alpine forest',
--	@Insert_Group = 'n',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'546',
--	@TERM_NAME = N'3 Alpine/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 41,
--		@Topic_E = N'4. Acidophilous oak and oak-birch forest',
--	@Insert_Group = 'n',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'547',
--	@TERM_NAME = N'4 Acidophilous/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 42,
--		@Topic_E = N'5. Mesophytic deciduous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'548',
--	@TERM_NAME = N'5 Mesophytic/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 43,
--		@Topic_E = N'6. Beech forest',
--	@Insert_Group = 'n',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'549',
--	@TERM_NAME = N'6 Beech/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 44,
--		@Topic_E = N'7. Mountainous beech forest',
--	@Insert_Group = 'n',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'550',
--	@TERM_NAME = N'7 Mountainous/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 45,
--		@Topic_E = N'8. Thermophilous deciduous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'551',
--	@TERM_NAME = N'8 Thermophilous/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 46,
--		@Topic_E = N'9. Broadleaved evergreen forest',
--	@Insert_Group = 'n',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'552',
--	@TERM_NAME = N'9 Brd evergreen/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 47,
--		@Topic_E = N'10. Coniferous forests of the Mediterranean, Anatolian and Macaronesian regions',
--	@Insert_Group = 'n',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'553',
--	@TERM_NAME = N'10 Conifer/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 48,
--		@Topic_E = N'11. Mire and swamp forest',
--	@Insert_Group = 'n',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'554',
--	@TERM_NAME = N'11 Mire/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 49,
--		@Topic_E = N'12. Floodplain forest',
--	@Insert_Group = 'n',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'555',
--	@TERM_NAME = N'12 Floodplain/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 50,
--		@Topic_E = N'13. Non-riverine alder, birch or aspen forest',
--	@Insert_Group = 'n',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'556',
--	@TERM_NAME = N'13 Non-riverine/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 51,
--		@Topic_E = N'14. Introduced tree species forest',
--	@Insert_Group = 'n',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'557',
--	@TERM_NAME = N'14 Introduced/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 52,
--		@Topic_E = N'Unclassified stocked forest',
--	@Insert_Group = 'n',
--		@Group_ID = 61,
--		@Group_E = N'Area with 6-10 tree species occurring (1000 ha)',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'558',
--	@TERM_NAME = N'Unclassified/6-10',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
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
--		@Group_ID = 62,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'559',
--	@TERM_NAME = N'1 Boreal/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 39,
--		@Topic_E = N'2. Hemiboreal and nemoral coniferous and mixed broadleaved-coniferous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 62,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'560',
--	@TERM_NAME = N'2 Hemiboreal/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
-- 
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 40,
--		@Topic_E = N'3. Alpine forest',
--	@Insert_Group = 'n',
--		@Group_ID = 62,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'561',
--	@TERM_NAME = N'3 Alpine/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 41,
--		@Topic_E = N'4. Acidophilous oak and oak-birch forest',
--	@Insert_Group = 'n',
--		@Group_ID = 62,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'562',
--	@TERM_NAME = N'4 Acidophilous/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 42,
--		@Topic_E = N'5. Mesophytic deciduous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 62,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'563',
--	@TERM_NAME = N'5 Mesophytic/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 43,
--		@Topic_E = N'6. Beech forest',
--	@Insert_Group = 'n',
--		@Group_ID = 62,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'564',
--	@TERM_NAME = N'6 Beech/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 44,
--		@Topic_E = N'7. Mountainous beech forest',
--	@Insert_Group = 'n',
--		@Group_ID = 62,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'565',
--	@TERM_NAME = N'7 Mountainous/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 45,
--		@Topic_E = N'8. Thermophilous deciduous forest',
--	@Insert_Group = 'n',
--		@Group_ID = 62,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'566',
--	@TERM_NAME = N'8 Thermophilous/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 46,
--		@Topic_E = N'9. Broadleaved evergreen forest',
--	@Insert_Group = 'n',
--		@Group_ID = 62,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'567',
--	@TERM_NAME = N'9 Brd evergreen/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 47,
--		@Topic_E = N'10. Coniferous forests of the Mediterranean, Anatolian and Macaronesian regions',
--	@Insert_Group = 'n',
--		@Group_ID = 62,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'568',
--	@TERM_NAME = N'10 Conifer/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 48,
--		@Topic_E = N'11. Mire and swamp forest',
--	@Insert_Group = 'n',
--		@Group_ID = 62,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'569',
--	@TERM_NAME = N'11 Mire/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 49,
--		@Topic_E = N'12. Floodplain forest',
--	@Insert_Group = 'n',
--		@Group_ID = 62,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'570',
--	@TERM_NAME = N'12 Floodplain/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 50,
--		@Topic_E = N'13. Non-riverine alder, birch or aspen forest',
--	@Insert_Group = 'n',
--		@Group_ID = 62,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'571',
--	@TERM_NAME = N'13 Non-riverine/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 51,
--		@Topic_E = N'14. Introduced tree species forest',
--	@Insert_Group = 'n',
--		@Group_ID = 62,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'572',
--	@TERM_NAME = N'14 Introduced/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 52,
--		@Topic_E = N'Unclassified stocked forest',
--	@Insert_Group = 'n',
--		@Group_ID = 62,
--		@Group_E = N'-',
--	@Insert_ReportingForm = 'n', 
--		@ReportingForm_ID = 24,
--		@ReportingForm_E = N'Form 4.1b: Tree species composition by European Forest Types',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'573',
--	@TERM_NAME = N'Unclassified/10+',
--	@STATE_STRUCTURE_NAME = N'F4.1b';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO