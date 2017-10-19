USE Timber; -- Select the records from the mcpfe-2011 table to be uploaded into the Total_Full_McpfeDb_2011 table.
GO
IF OBJECT_ID ( 'usp_SELECT_mcpfe_2011', 'P' ) IS NOT NULL 
    DROP PROCEDURE usp_SELECT_mcpfe_2011;
GO
CREATE PROCEDURE usp_SELECT_mcpfe_2011 
    @DIMENSION_ID_In varchar(100),
	@TERM_NAME nvarchar(255),
	@STATE_STRUCTURE_NAME nvarchar(255),
	@UN_COUNTRY_CODE varchar(100) OUTPUT,
	@YEAR varchar(100) OUTPUT,
	@DIMENSION_ID varchar(100) OUTPUT,
	@Value nvarchar(255) OUTPUT
AS
SELECT Countries.UN_COUNTRY_CODE AS UN_COUNTRY_CODE,
	[mcpfe-2011].YEAR,
	@DIMENSION_ID_In AS DIMENSION_ID,
	[mcpfe-2011].DATA AS Value
--INTO Total_Full_McpfeDb_2011_Tmp
FROM [mcpfe-2011]
INNER JOIN Countries
	ON [mcpfe-2011].COUNTRY_NAME = Countries.COUNTRY_NAME
WHERE [mcpfe-2011].STATE_STRUCTURE_NAME = @STATE_STRUCTURE_NAME
	AND [mcpfe-2011].TERM_NAME = @TERM_NAME
	AND (([mcpfe-2011].Uploaded <> N'yes')
		OR ([mcpfe-2011].Uploaded IS NULL)
	)
	AND [mcpfe-2011].DATA NOT IN (
		SELECT DATA FROM DATA_Excluded
	)
ORDER BY Countries.UN_COUNTRY_CODE, [mcpfe-2011].YEAR;
GO