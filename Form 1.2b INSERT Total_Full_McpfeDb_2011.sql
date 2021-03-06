USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 38,
		@Topic_E = N'1. Boreal forest',
	@Insert_Group = 'y',
		@Group_ID = 39,
		@Group_E = N'Volume (1000 m³ o.b.)',
	@Insert_ReportingForm = 'y', 
		@ReportingForm_ID = 14,
		@ReportingForm_E = N'Form 1.2b: Growing stock on forest by forest type',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'140',
	@TERM_NAME = N'GS 1 Boreal',
	@STATE_STRUCTURE_NAME = N'F1.2b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 39,
		@Topic_E = N'2. Hemiboreal and nemoral coniferous and mixed broadleaved-coniferous forest',
	@Insert_Group = 'n',
		@Group_ID = 39,
		@Group_E = N'Volume (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 14,
		@ReportingForm_E = N'Form 1.2b: Growing stock on forest by forest type',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'141',
	@TERM_NAME = N'GS 2 Hemiboreal',
	@STATE_STRUCTURE_NAME = N'F1.2b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 40,
		@Topic_E = N'3. Alpine forest',
	@Insert_Group = 'n',
		@Group_ID = 39,
		@Group_E = N'Volume (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 14,
		@ReportingForm_E = N'Form 1.2b: Growing stock on forest by forest type',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'142',
	@TERM_NAME = N'GS 3 Alpine',
	@STATE_STRUCTURE_NAME = N'F1.2b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 41,
		@Topic_E = N'4. Acidophilous oak and oak-birch forest',
	@Insert_Group = 'n',
		@Group_ID = 39,
		@Group_E = N'Volume (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 14,
		@ReportingForm_E = N'Form 1.2b: Growing stock on forest by forest type',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'143',
	@TERM_NAME = N'GS 4 Acidophilous',
	@STATE_STRUCTURE_NAME = N'F1.2b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 42,
		@Topic_E = N'5. Mesophytic deciduous forest',
	@Insert_Group = 'n',
		@Group_ID = 39,
		@Group_E = N'Volume (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 14,
		@ReportingForm_E = N'Form 1.2b: Growing stock on forest by forest type',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'144',
	@TERM_NAME = N'GS 5 Mesophytic',
	@STATE_STRUCTURE_NAME = N'F1.2b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 43,
		@Topic_E = N'6. Beech forest',
	@Insert_Group = 'n',
		@Group_ID = 39,
		@Group_E = N'Volume (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 14,
		@ReportingForm_E = N'Form 1.2b: Growing stock on forest by forest type',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'145',
	@TERM_NAME = N'GS 6 Beech',
	@STATE_STRUCTURE_NAME = N'F1.2b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 44,
		@Topic_E = N'7. Mountainous beech forest',
	@Insert_Group = 'n',
		@Group_ID = 39,
		@Group_E = N'Volume (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 14,
		@ReportingForm_E = N'Form 1.2b: Growing stock on forest by forest type',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'146',
	@TERM_NAME = N'GS 7 Mountainous',
	@STATE_STRUCTURE_NAME = N'F1.2b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 45,
		@Topic_E = N'8. Thermophilous deciduous forest',
	@Insert_Group = 'n',
		@Group_ID = 39,
		@Group_E = N'Volume (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 14,
		@ReportingForm_E = N'Form 1.2b: Growing stock on forest by forest type',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'147',
	@TERM_NAME = N'GS 8 Thermophilous',
	@STATE_STRUCTURE_NAME = N'F1.2b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 46,
		@Topic_E = N'9. Broadleaved evergreen forest',
	@Insert_Group = 'n',
		@Group_ID = 39,
		@Group_E = N'Volume (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 14,
		@ReportingForm_E = N'Form 1.2b: Growing stock on forest by forest type',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'148',
	@TERM_NAME = N'GS 9 Brd evergreen',
	@STATE_STRUCTURE_NAME = N'F1.2b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 47,
		@Topic_E = N'10. Coniferous forests of the Mediterranean, Anatolian and Macaronesian regions',
	@Insert_Group = 'n',
		@Group_ID = 39,
		@Group_E = N'Volume (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 14,
		@ReportingForm_E = N'Form 1.2b: Growing stock on forest by forest type',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'149',
	@TERM_NAME = N'GS 10 Conifer',
	@STATE_STRUCTURE_NAME = N'F1.2b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 48,
		@Topic_E = N'11. Mire and swamp forest',
	@Insert_Group = 'n',
		@Group_ID = 39,
		@Group_E = N'Volume (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 14,
		@ReportingForm_E = N'Form 1.2b: Growing stock on forest by forest type',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'150',
	@TERM_NAME = N'GS 11 Mire',
	@STATE_STRUCTURE_NAME = N'F1.2b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 49,
		@Topic_E = N'12. Floodplain forest',
	@Insert_Group = 'n',
		@Group_ID = 39,
		@Group_E = N'Volume (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 14,
		@ReportingForm_E = N'Form 1.2b: Growing stock on forest by forest type',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'151',
	@TERM_NAME = N'GS 12 Floodplain',
	@STATE_STRUCTURE_NAME = N'F1.2b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 50,
		@Topic_E = N'13. Non-riverine alder, birch or aspen forest',
	@Insert_Group = 'n',
		@Group_ID = 39,
		@Group_E = N'Volume (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 14,
		@ReportingForm_E = N'Form 1.2b: Growing stock on forest by forest type',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'152',
	@TERM_NAME = N'GS 13 Non-riverine',
	@STATE_STRUCTURE_NAME = N'F1.2b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 51,
		@Topic_E = N'14. Introduced tree species forest',
	@Insert_Group = 'n',
		@Group_ID = 39,
		@Group_E = N'Volume (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 14,
		@ReportingForm_E = N'Form 1.2b: Growing stock on forest by forest type',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'153',
	@TERM_NAME = N'GS 14 Introduced',
	@STATE_STRUCTURE_NAME = N'F1.2b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 52,
		@Topic_E = N'Unclassified stocked forest',
	@Insert_Group = 'n',
		@Group_ID = 39,
		@Group_E = N'Volume (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 14,
		@ReportingForm_E = N'Form 1.2b: Growing stock on forest by forest type',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'154',
	@TERM_NAME = N'GS Unclassified',
	@STATE_STRUCTURE_NAME = N'F1.2b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 53,
		@Topic_E = N'TOTAL',
	@Insert_Group = 'n',
		@Group_ID = 39,
		@Group_E = N'Volume (1000 m³ o.b.)',
	@Insert_ReportingForm = 'n', 
		@ReportingForm_ID = 14,
		@ReportingForm_E = N'Form 1.2b: Growing stock on forest by forest type',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'155',
	@TERM_NAME = N'GS Eft Total',
	@STATE_STRUCTURE_NAME = N'F1.2b';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO