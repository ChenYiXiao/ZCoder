USE [zcoder]
GO
/****** 对象:  Table [dbo].[tb_note]    脚本日期: 03/26/2013 15:28:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_note](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[noteName] [varchar](50) NULL,
	[uid] [int] NULL,
	[upTime] [datetime] NULL CONSTRAINT [DF_tb_note_upTime]  DEFAULT (getdate()),
	[context] [varchar](2000) NULL,
	[startLine] [int] NULL,
	[endLine] [int] NULL,
	[cid] [int] NULL,
	[agree] [int] NULL,
	[disagree] [int] NULL,
	[recommend] [int] NULL CONSTRAINT [DF_tb_note_best]  DEFAULT ((0)),
 CONSTRAINT [PK_tb_note] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'noteName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'uid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'upTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'context'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始行' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'startLine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'终止行' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'endLine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对应code的id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'cid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支持数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'agree'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'反对数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'disagree'
GO
