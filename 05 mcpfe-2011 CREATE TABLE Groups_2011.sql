USE [Timber_2011]
GO
/****** Object:  Table [dbo].[Groups_2011]    Script Date: 10/06/2011 09:08:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Groups_2011](
	[Group_ID] [int] IDENTITY(1,1) NOT NULL,
	[Group_E] [varchar](3000) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[Group_E_Rus] [nvarchar](3000) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
 CONSTRAINT [PK_Groups_2011] PRIMARY KEY CLUSTERED 
(
	[Group_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF