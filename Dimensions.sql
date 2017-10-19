USE Timber
SELECT 	/*Dimensions.DIMENSION_ID,*/ TERM_NAME,
	/*ReportingForms.ReportingForm_ID,*/ ReportingForm_E,
	Topics.Topic_ID, Topic_E,
	Groups.Group_ID, Group_E,
	/*SubGroups.SubGroup_ID,*/ SubGroup_E
FROM Dimensions
INNER JOIN Topics ON Dimensions.Topic_ID = Topics.Topic_ID
INNER JOIN Groups ON Dimensions.Group_ID = Groups.Group_ID
INNER JOIN SubGroups ON Dimensions.SubGroup_ID = SubGroups.SubGroup_ID
INNER JOIN ReportingForms ON Dimensions.ReportingForm_ID = ReportingForms.ReportingForm_ID

WHERE Dimensions.ReportingForm_ID = 1				--Form 1
--WHERE Dimensions.ReportingForm_ID = 14			--Form 3.2
--WHERE Dimensions.ReportingForm_ID = 16				--Form 5