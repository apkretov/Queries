USE [Timber_2011]
GO
/****** Object:  Table [dbo].[Topics_2011]    Script Date: 10/06/2011 09:08:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Topics_2011](
	[Topic_ID] [int] IDENTITY(1,1) NOT NULL,
	[Topic_E] [varchar](3000) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[Topic_E_Rus] [nvarchar](3000) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
 CONSTRAINT [PK_Topics_2011] PRIMARY KEY CLUSTERED 
(
	[Topic_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF