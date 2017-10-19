USE Timber; -- Insert a data into the DATA_Excluded table to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.
GO
IF OBJECT_ID ( 'usp_INSERT_DATA_Excluded', 'P' ) IS NOT NULL 
    DROP PROCEDURE usp_INSERT_DATA_Excluded;
GO
CREATE PROCEDURE usp_INSERT_DATA_Excluded 
	@DATA nvarchar(255)
AS 
	INSERT INTO DATA_Excluded
	VALUES (@DATA);
GO