USE [Timber]
GO
/****** Object:  Table [dbo].[Dimensions_2011]    Script Date: 09/09/2011 17:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dimensions_2011](
	[DIMENSION_ID] [int] IDENTITY(1,1) NOT NULL,
	[TERM_NAME] [varchar](3000) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
	[Topic_ID] [int] NOT NULL,
	[Group_ID] [int] NOT NULL,
	[Subgroup_ID] [int] NOT NULL,
	[ReportingForm_ID] [int] NOT NULL,
 CONSTRAINT [PK_Dimensions_2011] PRIMARY KEY CLUSTERED 
(
	[DIMENSION_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Dimensions_2011] UNIQUE NONCLUSTERED 
(
	[Group_ID] ASC,
	[Subgroup_ID] ASC,
	[Topic_ID] ASC,
	[ReportingForm_ID] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [Timber]
GO
ALTER TABLE [dbo].[Dimensions_2011]  WITH CHECK ADD  CONSTRAINT [FK_Dimensions_2011_Groups_2011] FOREIGN KEY([Group_ID])
REFERENCES [dbo].[Groups_2011] ([Group_ID])
GO
ALTER TABLE [dbo].[Dimensions_2011]  WITH CHECK ADD  CONSTRAINT [FK_Dimensions_2011_ReportingForms_2011] FOREIGN KEY([ReportingForm_ID])
REFERENCES [dbo].[ReportingForms_2011] ([ReportingForm_ID])
GO
ALTER TABLE [dbo].[Dimensions_2011]  WITH CHECK ADD  CONSTRAINT [FK_Dimensions_2011_SubGroups_2011] FOREIGN KEY([Subgroup_ID])
REFERENCES [dbo].[SubGroups_2011] ([SubGroup_ID])
GO
ALTER TABLE [dbo].[Dimensions_2011]  WITH CHECK ADD  CONSTRAINT [FK_Dimensions_2011_Topics_2011] FOREIGN KEY([Topic_ID])
REFERENCES [dbo].[Topics_2011] ([Topic_ID])