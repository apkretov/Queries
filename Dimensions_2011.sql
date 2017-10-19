USE Timber_2011
SELECT 	/*ReportingForms_2011.ReportingForm_ID, ReportingForm_E, STATE_STRUCTURE_NAME,*/
	Dimensions_2011.DIMENSION_ID, /*TERM_NAME,*/
	/*Topics_2011.Topic_ID,*/ Topic_E, /*Topic_E_Rus,*/
	/*Groups_2011.Group_ID,*/ Group_E/*, Group_E_Rus,*/
FROM Dimensions_2011
INNER JOIN Topics_2011 ON Dimensions_2011.Topic_ID = Topics_2011.Topic_ID
INNER JOIN Groups_2011 ON Dimensions_2011.Group_ID = Groups_2011.Group_ID
INNER JOIN SubGroups_2011 ON Dimensions_2011.SubGroup_ID = SubGroups_2011.SubGroup_ID
INNER JOIN ReportingForms_2011 ON Dimensions_2011.ReportingForm_ID = ReportingForms_2011.ReportingForm_ID

--WHERE ReportingForms_2011.ReportingForm_ID = 39
WHERE ReportingForms_2011.STATE_STRUCTURE_NAME = N'F6.2'