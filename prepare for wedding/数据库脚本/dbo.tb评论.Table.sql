USE [prepare for wedding]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb评论](
	[iid] [int] IDENTITY(1,1) NOT NULL,
	[rowver] [timestamp] NOT NULL,
	[createtime] [datetime] NOT NULL,
	[祝福iid] [int] NOT NULL,
	[评论人] [nvarchar](50) NULL,
	[评论内容] [nvarchar](300) NULL,
 CONSTRAINT [PK_tb评论] PRIMARY KEY CLUSTERED 
(
	[iid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tb评论_祝福iid] ON [dbo].[tb评论] 
(
	[祝福iid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb评论] ADD  CONSTRAINT [DF_tb评论_createtime]  DEFAULT (getdate()) FOR [createtime]
GO
