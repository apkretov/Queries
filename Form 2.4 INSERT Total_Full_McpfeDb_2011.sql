USE Timber --Inserting mcpfe-2011 data into Total_Full_McpfeDb_2011
GO
BEGIN TRANSACTION;
EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 3,
--		@Group_E = N'Total area damaged by different agents (1000 ha)',
--	@Insert_ReportingForm = 'y',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'006',
--	@TERM_NAME = N'Forest/Total area',
--	@STATE_STRUCTURE_NAME = N'F2.4a';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 3,
--		@Group_E = N'Total area damaged by different agents (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'007',
--	@TERM_NAME = N'OWL/Total area',
--	@STATE_STRUCTURE_NAME = N'F2.4a';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 3,
--		@Group_E = N'Total area damaged by different agents (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'008',
--	@TERM_NAME = N'FOWL/Total area',
--	@STATE_STRUCTURE_NAME = N'F2.4a';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 4,
--		@Group_E = N'Area damaged by biotic agents: insects and disease (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'009',
--	@TERM_NAME = N'Forest/Ins&Dis',
--	@STATE_STRUCTURE_NAME = N'F2.4a';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 4,
--		@Group_E = N'Area damaged by biotic agents: insects and disease (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'010',
--	@TERM_NAME = N'OWL/Ins&Dis',
--	@STATE_STRUCTURE_NAME = N'F2.4a';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 4,
--		@Group_E = N'Area damaged by biotic agents: insects and disease (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'011',
--	@TERM_NAME = N'FOWL/Ins&Dis',
--	@STATE_STRUCTURE_NAME = N'F2.4a';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 5,
--		@Group_E = N'Area damaged by biotic agents: wildlife and grazing (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'012',
--	@TERM_NAME = N'Forest/Wildlife',
--	@STATE_STRUCTURE_NAME = N'F2.4a';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 5,
--		@Group_E = N'Area damaged by biotic agents: wildlife and grazing (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'013',
--	@TERM_NAME = N'OWL/Wildlife',
--	@STATE_STRUCTURE_NAME = N'F2.4a';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 5,
--		@Group_E = N'Area damaged by biotic agents: wildlife and grazing (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'014',
--	@TERM_NAME = N'FOWL/Wildlife',
--	@STATE_STRUCTURE_NAME = N'F2.4a';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	--@Insert_Group = 'n',
--	@Insert_Group = 'y',
--		@Group_ID = 6,
--		@Group_E = N'Area damaged by human: forest operations (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'016',
--	@TERM_NAME = N'OWL/ForOp',
--	@STATE_STRUCTURE_NAME = N'F2.4a';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 6,
--		@Group_E = N'Area damaged by human: forest operations (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'017',
--	@TERM_NAME = N'FOWL/ForOp',
--	@STATE_STRUCTURE_NAME = N'F2.4a';

--INSERT INTO Dimensions_2011 (DIMENSION_ID, TERM_NAME, Topic_ID, Group_ID, Subgroup_ID, ReportingForm_ID) --Insert the data individually w/o the usp_INSERT_DATA_Excluded procedure because it didn't work due to an unknown reason.
--	VALUES (N'015', N'Forest/ForOp', 1, 6, 1, 2);
--INSERT Total_Full_McpfeDb_2011 VALUES ('100','1990','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('100','2000','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('100','2005','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('112','2000','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('112','2005','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('196','2005','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('208','2005','015',2.7);
--INSERT Total_Full_McpfeDb_2011 VALUES ('233','2005','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('246','1990','015',0.6);
--INSERT Total_Full_McpfeDb_2011 VALUES ('246','2000','015',0.5);
--INSERT Total_Full_McpfeDb_2011 VALUES ('246','2005','015',0.2);
--INSERT Total_Full_McpfeDb_2011 VALUES ('352','1990','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('352','2000','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('352','2005','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('380','2000','015',27);
--INSERT Total_Full_McpfeDb_2011 VALUES ('380','2005','015',28.3);
--INSERT Total_Full_McpfeDb_2011 VALUES ('428','1990','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('428','2000','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('428','2005','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('440','1990','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('440','2000','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('440','2005','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('705','2000','015',0.1);
--INSERT Total_Full_McpfeDb_2011 VALUES ('705','2005','015',0.1);
--INSERT Total_Full_McpfeDb_2011 VALUES ('752','1990','015',90);
--INSERT Total_Full_McpfeDb_2011 VALUES ('752','2000','015',90);
--INSERT Total_Full_McpfeDb_2011 VALUES ('752','2005','015',90);
--INSERT Total_Full_McpfeDb_2011 VALUES ('804','1990','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('804','2000','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('804','2005','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('826','1990','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('826','2000','015',0);
--INSERT Total_Full_McpfeDb_2011 VALUES ('826','2005','015',0);

--EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.
--EXECUTE usp_INSERT_DATA_Excluded 'n..a.'; --Insert the excluded data.
--UPDATE [mcpfe-2011] --Flag updated records
--	SET Uploaded = 'yes'
--WHERE STATE_STRUCTURE_NAME = N'F2.4a'
--	AND TERM_NAME = N'Forest/ForOp'
--	AND (([mcpfe-2011].Uploaded <> N'yes')
--		OR ([mcpfe-2011].Uploaded IS NULL)
--	)
--	AND [mcpfe-2011].DATA NOT IN (
--		SELECT DATA FROM DATA_Excluded
--	);
--EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 7,
--		@Group_E = N'Area damaged by human: other (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'018',
--	@TERM_NAME = N'Forest/OtherHuman',
--	@STATE_STRUCTURE_NAME = N'F2.4a';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 7,
--		@Group_E = N'Area damaged by human: other (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'019',
--	@TERM_NAME = N'OWL/OtherHuman',
--	@STATE_STRUCTURE_NAME = N'F2.4a';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 7,
--		@Group_E = N'Area damaged by human: other (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'020',
--	@TERM_NAME = N'FOWL/OtherHuman',
--	@STATE_STRUCTURE_NAME = N'F2.4a';


--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 8,
--		@Group_E = N'Area damaged by abiotic agents: storm, wind, snow, etc. (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'021',
--	@TERM_NAME = N'Forest/Storm',
--	@STATE_STRUCTURE_NAME = N'F2.4a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 8,
--		@Group_E = N'Area damaged by abiotic agents: storm, wind, snow, etc. (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'022',
--	@TERM_NAME = N'OWL/Storm',
--	@STATE_STRUCTURE_NAME = N'F2.4a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 8,
--		@Group_E = N'Area damaged by abiotic agents: storm, wind, snow, etc. (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'023',
--	@TERM_NAME = N'FOWL/Storm',
--	@STATE_STRUCTURE_NAME = N'F2.4a';


----EXECUTE usp_DROP_CREATE_DATA_Excluded 'y'; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.
--EXECUTE usp_INSERT_DATA_Excluded 'n.a'; --Insert the excluded data.
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 9,
--		@Group_E = N'Area damaged by fire (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'024',
--	@TERM_NAME = N'Forest/Fire area',
--	@STATE_STRUCTURE_NAME = N'F2.4a';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 9,
--		@Group_E = N'Area damaged by fire (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'025',
--	@TERM_NAME = N'OWL/Fire area',
--	@STATE_STRUCTURE_NAME = N'F2.4a';

--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 9,
--		@Group_E = N'Area damaged by fire (1000 ha)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'026',
--	@TERM_NAME = N'FOWL/Fire area',
--	@STATE_STRUCTURE_NAME = N'F2.4a';
----EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.


--EXECUTE usp_INSERT_DATA_Excluded '.'; --Insert the excluded data.
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 1,
--		@Topic_E = N'Forest',
--	@Insert_Group = 'y',
--		@Group_ID = 10,
--		@Group_E = N'Area damaged by fire (No. of fires)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'027',
--	@TERM_NAME = N'Forest/Fire#',
--	@STATE_STRUCTURE_NAME = N'F2.4a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 3,
--		@Topic_E = N'Other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 10,
--		@Group_E = N'Area damaged by fire (No. of fires)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'028',
--	@TERM_NAME = N'OWL/Fire#',
--	@STATE_STRUCTURE_NAME = N'F2.4a';
--
--EXECUTE usp_INSERT_Total_Full_McpfeDb_2011
--	@Insert_Topic = 'n',
--		@Topic_ID = 4,
--		@Topic_E = N'Total forest and other wooded land',
--	@Insert_Group = 'n',
--		@Group_ID = 10,
--		@Group_E = N'Area damaged by fire (No. of fires)',
--	@Insert_ReportingForm = 'n',
--		@ReportingForm_ID = 2,
--		@ReportingForm_E = N'Form 2.4a: Forest damage',
--	@Subgroup_ID = 1,
--	@DIMENSION_ID = N'029',
--	@TERM_NAME = N'FOWL/Fire#',
--	@STATE_STRUCTURE_NAME = N'F2.4a';

EXECUTE usp_DROP_CREATE_DATA_Excluded 'n'; -- Drop the DATA_Excluded table.

--COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
GO