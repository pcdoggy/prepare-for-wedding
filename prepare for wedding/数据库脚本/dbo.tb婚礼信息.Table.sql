USE [prepare for wedding]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb婚礼信息](
	[iid] [int] IDENTITY(1,1) NOT NULL,
	[rowver] [timestamp] NOT NULL,
	[createtime] [datetime] NOT NULL,
	[bridegroom] [nvarchar](50) NOT NULL,
	[bride] [nvarchar](50) NOT NULL,
	[dateofmarriage] [datetime] NOT NULL,
	[lovestroy] [nvarchar](500) NULL,
	[address] [nvarchar](200) NULL,
 CONSTRAINT [PK_tb婚礼信息] PRIMARY KEY CLUSTERED 
(
	[iid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb婚礼信息] ADD  CONSTRAINT [DF_tb婚礼信息_createtime]  DEFAULT (getdate()) FOR [createtime]
GO
ALTER TABLE [dbo].[tb婚礼信息] ADD  CONSTRAINT [DF_tb婚礼信息_dateofmarriage]  DEFAULT (getdate()) FOR [dateofmarriage]
GO
