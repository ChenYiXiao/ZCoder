SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_type]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typeName] [varchar](50) NULL,
	[description] [varchar](200) NULL,
 CONSTRAINT [PK_tb_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_type', N'COLUMN',N'typeName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_type', @level2type=N'COLUMN',@level2name=N'typeName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_type', N'COLUMN',N'description'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_type', @level2type=N'COLUMN',@level2name=N'description'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_user]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](20) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[qq] [varchar](15) NOT NULL,
	[sex] [bit] NULL CONSTRAINT [DF_tb_user_sex]  DEFAULT ((1)),
	[isadmin] [bit] NULL CONSTRAINT [DF_tb_user_isadmin]  DEFAULT ((0)),
	[regTime] [datetime] NULL CONSTRAINT [DF_tb_user_regTime]  DEFAULT (getdate()),
 CONSTRAINT [PK_tb_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_user', N'COLUMN',N'userName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user', @level2type=N'COLUMN',@level2name=N'userName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_user', N'COLUMN',N'password'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user', @level2type=N'COLUMN',@level2name=N'password'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_user', N'COLUMN',N'email'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user', @level2type=N'COLUMN',@level2name=N'email'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_user', N'COLUMN',N'qq'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user', @level2type=N'COLUMN',@level2name=N'qq'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_user', N'COLUMN',N'sex'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user', @level2type=N'COLUMN',@level2name=N'sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_user', N'COLUMN',N'isadmin'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否管理员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user', @level2type=N'COLUMN',@level2name=N'isadmin'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_user', N'COLUMN',N'regTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_user', @level2type=N'COLUMN',@level2name=N'regTime'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_code]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_code](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NULL,
	[upTime] [datetime] NULL CONSTRAINT [DF_tb_code_upTime]  DEFAULT (getdate()),
	[uid] [int] NULL,
	[lid] [int] NULL,
	[path] [varchar](500) NULL,
 CONSTRAINT [PK_tb_code] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_lang]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_lang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[description] [varchar](500) NULL,
	[ext] [varchar](50) NULL,
	[brushName] [varchar](50) NULL,
	[brushAliases] [varchar](50) NULL,
	[brushFile] [varchar](50) NULL,
 CONSTRAINT [PK_tb_lang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_lang', N'COLUMN',N'name'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'语言名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_lang', @level2type=N'COLUMN',@level2name=N'name'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_lang', N'COLUMN',N'description'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'语言简述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_lang', @level2type=N'COLUMN',@level2name=N'description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_lang', N'COLUMN',N'ext'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'语言扩展名，用逗号隔开' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_lang', @level2type=N'COLUMN',@level2name=N'ext'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_announcement]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_announcement](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NULL,
	[amtitle] [varchar](50) NULL,
	[essay] [varchar](2000) NULL,
	[uptime] [datetime] NULL CONSTRAINT [DF_tb_announcement_uptime]  DEFAULT (getdate()),
 CONSTRAINT [PK_tb_announcement] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_Ding]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_Ding](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nid] [int] NOT NULL,
	[uid] [int] NOT NULL,
	[isDing] [int] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_comment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[commentTitle] [varchar](50) NULL,
	[context] [varchar](2000) NULL,
	[agree] [int] NULL,
	[disagree] [int] NULL,
	[uid] [int] NULL,
	[nid] [int] NULL,
	[uptime] [datetime] NULL CONSTRAINT [DF_tb_comment_uptime]  DEFAULT (getdate()),
 CONSTRAINT [PK_tb_comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_note]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_note', N'COLUMN',N'noteName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'noteName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_note', N'COLUMN',N'uid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'uid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_note', N'COLUMN',N'upTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'upTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_note', N'COLUMN',N'context'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'context'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_note', N'COLUMN',N'startLine'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始行' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'startLine'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_note', N'COLUMN',N'endLine'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'终止行' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'endLine'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_note', N'COLUMN',N'cid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对应code的id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'cid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_note', N'COLUMN',N'agree'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支持数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'agree'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_note', N'COLUMN',N'disagree'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'反对数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_note', @level2type=N'COLUMN',@level2name=N'disagree'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_project]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_project](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projectName] [varchar](50) NULL,
	[uid] [int] NULL,
	[description] [varchar](2000) NULL,
	[upTime] [datetime] NULL CONSTRAINT [DF_tb_project_upTime]  DEFAULT (getdate()),
	[tid] [int] NULL,
 CONSTRAINT [PK_tb_project] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_project', N'COLUMN',N'projectName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工程名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_project', @level2type=N'COLUMN',@level2name=N'projectName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_project', N'COLUMN',N'uid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_project', @level2type=N'COLUMN',@level2name=N'uid'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_project', N'COLUMN',N'description'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_project', @level2type=N'COLUMN',@level2name=N'description'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_project', N'COLUMN',N'upTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上传日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_project', @level2type=N'COLUMN',@level2name=N'upTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_project', N'COLUMN',N'tid'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_project', @level2type=N'COLUMN',@level2name=N'tid'
