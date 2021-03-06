USE Timber; -- Drop & create the DATA_Excluded table for the data to be exlcluded from uploading the Total_Full_McpfeDb_2011 table by the usp_INSERT_Total_Full_McpfeDb_2011 procedure.
GO
IF OBJECT_ID ( 'usp_DROP_CREATE_DATA_Excluded', 'P' ) IS NOT NULL 
    DROP PROCEDURE usp_DROP_CREATE_DATA_Excluded;
GO
CREATE PROCEDURE usp_DROP_CREATE_DATA_Excluded 
	@Create char
AS 
	IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DATA_Excluded]') AND type in (N'U')) --Drop the existing table.
	DROP TABLE [dbo].[DATA_Excluded]
	IF @Create = N'y' BEGIN --Create a new table, if required.
		SET ANSI_NULLS ON;
		--GO
		SET QUOTED_IDENTIFIER ON;
		--GO
		CREATE TABLE [dbo].[DATA_Excluded](
			[DATA] [nvarchar](255) NULL
		) ON [PRIMARY];
	END
GO
