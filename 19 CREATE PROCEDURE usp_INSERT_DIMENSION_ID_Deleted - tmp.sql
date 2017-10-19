USE Timber; -- Insert a data into the DIMENSION_ID_Deleted table to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.
GO
IF OBJECT_ID ( 'usp_INSERT_DIMENSION_ID_Deleted', 'P' ) IS NOT NULL 
    DROP PROCEDURE usp_INSERT_DIMENSION_ID_Deleted;
GO
CREATE PROCEDURE usp_INSERT_DIMENSION_ID_Deleted 
	@DATA nvarchar(255)
AS 
	INSERT INTO DIMENSION_ID_Deleted
	VALUES (@DATA);
GO