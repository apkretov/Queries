USE [Timber_2011]
GO
/****** Object:  Table [dbo].[ReportingForms_2011]    Script Date: 10/04/2011 12:44:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReportingForms_2011](
	[ReportingForm_ID] [int] IDENTITY(1,1) NOT NULL,
	[ReportingForm_E] [varchar](3000) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
	[STATE_STRUCTURE_NAME] [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
 CONSTRAINT [PK_ReportingForms_2011] PRIMARY KEY CLUSTERED 
(
	[ReportingForm_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF