USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 88,
--		@Topic_E = N'Abies alba',
--	@Insert_Group = 'y',
--		@Group_ID = 132,
--		@Group_E = N'Area managed for seed production (ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'Indicator 4.6b: Genetic resources - Areas managed for conservation and utilisation of forest tree genetic resources and areas managed for seed production by selected tree species',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Abies alba Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 89,
--		@Topic_E = N'Abies cephalonica',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Abies cephalonica Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 90,
--		@Topic_E = N'Abies grandis',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Abies grandis Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 91,
--		@Topic_E = N'Abies pinsapo',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Abies pinsapo Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 92,
--		@Topic_E = N'Acer campestre',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Acer campestre Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 93,
--		@Topic_E = N'Acer platanoides',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Acer platanoides Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 94,
--		@Topic_E = N'Acer pseudoplatanus',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Acer pseudoplatanus Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 95,
--		@Topic_E = N'Alnus glutinosa',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Alnus glutinosa Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 96,
--		@Topic_E = N'Alnus incana',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Alnus incana Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 97,
--		@Topic_E = N'Betula pendula',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Betula pendula Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 98,
--		@Topic_E = N'Betula pubescens',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Betula pubescens Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 99,
--		@Topic_E = N'Carpinus betulus',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Carpinus betulus Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 100,
--		@Topic_E = N'Castanea sativa',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Castanea sativa Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 101,
--		@Topic_E = N'Cedrus atlantica',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Cedrus atlantica Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 102,
--		@Topic_E = N'Cedrus libani',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Cedrus libani Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 103,
--		@Topic_E = N'Fagus sylvatica',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Fagus sylvatica Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 104,
--		@Topic_E = N'Fraxinus angustifolia',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Fraxinus angustifolia Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 105,
--		@Topic_E = N'Fraxinus excelsior',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Fraxinus excelsior Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 106,
--		@Topic_E = N'Junglas regia',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Junglas regia Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 107,
--		@Topic_E = N'Larix decidua',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Larix decidua Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 108,
--		@Topic_E = N'Larix x eurolepis',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Larix x eurolepis Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 109,
--		@Topic_E = N'Larix kaempferi',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Larix kaempferi Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 110,
--		@Topic_E = N'Larix sibirica',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Larix sibirica Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 111,
--		@Topic_E = N'Picea abies',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Picea abies Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 112,
--		@Topic_E = N'Picea sitchensis',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Picea sitchensis Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 113,
--		@Topic_E = N'Pinus brutia',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Pinus brutia Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 114,
--		@Topic_E = N'Pinus canariensis',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Pinus canariensis Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 115,
--		@Topic_E = N'Pinus cembra',
--	@Insert_Group = 'n',
--		@Group_ID = 132,
--		@Group_E = N'-',
--	@Insert_ReportingForm = '-',
--		@ReportingForm_ID = 46,
--		@ReportingForm_E = N'-',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'0',
--	@TERM_NAME = N'Pinus cembra Seed',
--	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 116,
		@Topic_E = N'Pinus contorta',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Pinus contorta Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 117,
		@Topic_E = N'Pinus halepensis',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Pinus halepensis Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 118,
		@Topic_E = N'Pinus heldreichii/leucodermis',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Pinus heldreichii/leucodermis Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 119,
		@Topic_E = N'Pinus nigra',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Pinus nigra Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 120,
		@Topic_E = N'Pinus pinaster',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Pinus pinaster Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 121,
		@Topic_E = N'Pinus pinea',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Pinus pinea Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 122,
		@Topic_E = N'Pinus radiata',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Pinus radiata Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 123,
		@Topic_E = N'Pinus sylvestris',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Pinus sylvestris Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 124,
		@Topic_E = N'Populus alba',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Populus alba Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 125,
		@Topic_E = N'Populus nigra',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Populus nigra Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 126,
		@Topic_E = N'Populus tremula',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Populus tremula Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 127,
		@Topic_E = N'Prunus avium',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Prunus avium Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 128,
		@Topic_E = N'Pyrus pyraster',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Pyrus pyraster Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 129,
		@Topic_E = N'Pseudotsuga menziesii',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Pseudotsuga menziesii Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 130,
		@Topic_E = N'Quercus cerris',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Quercus cerris Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 131,
		@Topic_E = N'Quercus frainetto',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Quercus frainetto Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 132,
		@Topic_E = N'Quercus ilex',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Quercus ilex Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 133,
		@Topic_E = N'Quercus petraea',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Quercus petraea Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 134,
		@Topic_E = N'Quercus pubescens',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Quercus pubescens Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 135,
		@Topic_E = N'Quercus robur',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Quercus robur Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';





EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 136,
		@Topic_E = N'Quercus rubra',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Quercus rubra Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 137,
		@Topic_E = N'Quercus suber',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Quercus suber Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 138,
		@Topic_E = N'Robinia pseudoacacia',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Robinia pseudoacacia Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 139,
		@Topic_E = N'Sorbus aucuparia',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Sorbus aucuparia Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 140,
		@Topic_E = N'Sorbus domestica',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Sorbus domestica Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 141,
		@Topic_E = N'Sorbus torminalis',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Sorbus torminalis Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 142,
		@Topic_E = N'Taxus baccata',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Taxus baccata Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 143,
		@Topic_E = N'Tilia cordata',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Tilia cordata Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 144,
		@Topic_E = N'Tilia platyphyllos',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Tilia platyphyllos Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 145,
		@Topic_E = N'Ulmus glabra',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Ulmus glabra Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
	@Insert_Topic = 'n',
		@Topic_ID = 146,
		@Topic_E = N'Ulmus laevis',
	@Insert_Group = 'n',
		@Group_ID = 132,
		@Group_E = N'-',
	@Insert_ReportingForm = '-',
		@ReportingForm_ID = 46,
		@ReportingForm_E = N'-',
	@Subgroup_ID = 1,
	@DIMENSION_ID = N'0',
	@TERM_NAME = N'Ulmus laevis Seed',
	@STATE_STRUCTURE_NAME = N'A4.6b';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.
--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO