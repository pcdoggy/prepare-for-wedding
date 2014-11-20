USE [prepare for wedding]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb祝福](
	[iid] [int] IDENTITY(1,1) NOT NULL,
	[rowver] [timestamp] NOT NULL,
	[createtime] [datetime] NOT NULL,
	[婚礼iid] [int] NOT NULL,
	[祝福人] [nvarchar](50) NULL,
	[祝福内容] [nvarchar](300) NULL,
 CONSTRAINT [PK_tb祝福] PRIMARY KEY CLUSTERED 
(
	[iid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_tb祝福_婚礼iid] ON [dbo].[tb祝福] 
(
	[婚礼iid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb祝福] ADD  CONSTRAINT [DF_tb祝福_createtime]  DEFAULT (getdate()) FOR [createtime]
GO
