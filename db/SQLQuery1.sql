/****** Object:  Table [dbo].[tb_lang]    Script Date: 11/14/2012 21:25:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_lang]') AND type in (N'U'))
DROP TABLE [dbo].[tb_lang]
GO
/****** Object:  Table [dbo].[tb_code]    Script Date: 11/14/2012 21:25:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_code]') AND type in (N'U'))
DROP TABLE [dbo].[tb_code]
GO
/****** Object:  Table [dbo].[tb_user]    Script Date: 11/14/2012 21:25:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_user]') AND type in (N'U'))
DROP TABLE [dbo].[tb_user]
GO
/****** Object:  Table [dbo].[tb_type]    Script Date: 11/14/2012 21:25:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_type]') AND type in (N'U'))
DROP TABLE [dbo].[tb_type]
GO
/****** Object:  Table [dbo].[tb_project]    Script Date: 11/14/2012 21:25:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_project]') AND type in (N'U'))
DROP TABLE [dbo].[tb_project]
GO
/****** Object:  Table [dbo].[tb_note]    Script Date: 11/14/2012 21:25:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_note]') AND type in (N'U'))
DROP TABLE [dbo].[tb_note]
GO
/****** Object:  Table [dbo].[tb_comment]    Script Date: 11/14/2012 21:25:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_comment]') AND type in (N'U'))
DROP TABLE [dbo].[tb_comment]
GO
/****** Object:  Default [DF_tb_code_upTime]    Script Date: 11/14/2012 21:25:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_code_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_code]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_code_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_code] DROP CONSTRAINT [DF_tb_code_upTime]
END


End
GO
/****** Object:  Default [DF_tb_comment_uptime]    Script Date: 11/14/2012 21:25:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_comment_uptime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_comment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_comment_uptime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_comment] DROP CONSTRAINT [DF_tb_comment_uptime]
END


End
GO
/****** Object:  Default [DF_tb_note_upTime]    Script Date: 11/14/2012 21:25:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_note_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_note]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_note_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_note] DROP CONSTRAINT [DF_tb_note_upTime]
END


End
GO
/****** Object:  Default [DF_tb_project_upTime]    Script Date: 11/14/2012 21:25:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_project_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_project]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_project_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_project] DROP CONSTRAINT [DF_tb_project_upTime]
END


End
GO
/****** Object:  Default [DF_tb_user_sex]    Script Date: 11/14/2012 21:25:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_sex]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_sex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] DROP CONSTRAINT [DF_tb_user_sex]
END


End
GO
/****** Object:  Default [DF_tb_user_isadmin]    Script Date: 11/14/2012 21:25:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_isadmin]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_isadmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] DROP CONSTRAINT [DF_tb_user_isadmin]
END


End
GO
/****** Object:  Default [DF_tb_user_regTime]    Script Date: 11/14/2012 21:25:34 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_regTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_regTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] DROP CONSTRAINT [DF_tb_user_regTime]
END


End
GO
/****** Object:  Table [dbo].[tb_comment]    Script Date: 11/14/2012 21:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_comment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[commentTitle] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[context] [varchar](2000) COLLATE Chinese_PRC_CI_AS NULL,
	[agree] [int] NULL,
	[disagree] [int] NULL,
	[uid] [int] NULL,
	[nid] [int] NULL,
	[uptime] [datetime] NULL,
 CONSTRAINT [PK_tb_comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tb_note]    Script Date: 11/14/2012 21:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_note]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_note](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[noteName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[uid] [int] NULL,
	[upTime] [datetime] NULL,
	[context] [varchar](2000) COLLATE Chinese_PRC_CI_AS NULL,
	[startLine] [int] NULL,
	[endLine] [int] NULL,
	[cid] [int] NULL,
	[agree] [int] NULL,
	[disagree] [int] NULL,
 CONSTRAINT [PK_tb_note] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
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
/****** Object:  Table [dbo].[tb_project]    Script Date: 11/14/2012 21:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_project]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_project](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[projectName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[uid] [int] NULL,
	[description] [varchar](2000) COLLATE Chinese_PRC_CI_AS NULL,
	[upTime] [datetime] NULL,
	[tid] [int] NULL,
 CONSTRAINT [PK_tb_project] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
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
GO
SET IDENTITY_INSERT [dbo].[tb_project] ON
INSERT [dbo].[tb_project] ([id], [projectName], [uid], [description], [upTime], [tid]) VALUES (5, N'乐桌面', 4, N'', CAST(0x0000A0FC01701EAC AS DateTime), 1)
INSERT [dbo].[tb_project] ([id], [projectName], [uid], [description], [upTime], [tid]) VALUES (6, N'ZCoder', 4, N'', CAST(0x0000A0FD00D77378 AS DateTime), 4)
INSERT [dbo].[tb_project] ([id], [projectName], [uid], [description], [upTime], [tid]) VALUES (7, N'腾讯QQ', 4, N'', CAST(0x0000A0FD00D83600 AS DateTime), 1)
INSERT [dbo].[tb_project] ([id], [projectName], [uid], [description], [upTime], [tid]) VALUES (8, N'奋斗的小猪', 4, N'', CAST(0x0000A10300B4C0A8 AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[tb_project] OFF
/****** Object:  Table [dbo].[tb_type]    Script Date: 11/14/2012 21:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_type]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typeName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[description] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_tb_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_type', N'COLUMN',N'typeName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_type', @level2type=N'COLUMN',@level2name=N'typeName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'tb_type', N'COLUMN',N'description'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_type', @level2type=N'COLUMN',@level2name=N'description'
GO
SET IDENTITY_INSERT [dbo].[tb_type] ON
INSERT [dbo].[tb_type] ([id], [typeName], [description]) VALUES (1, N'桌面程序', N'图像类')
INSERT [dbo].[tb_type] ([id], [typeName], [description]) VALUES (2, N'手机程序', NULL)
INSERT [dbo].[tb_type] ([id], [typeName], [description]) VALUES (3, N'游戏程序', NULL)
INSERT [dbo].[tb_type] ([id], [typeName], [description]) VALUES (4, N'Web应用', NULL)
SET IDENTITY_INSERT [dbo].[tb_type] OFF
/****** Object:  Table [dbo].[tb_user]    Script Date: 11/14/2012 21:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_user]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[password] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[email] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[qq] [varchar](15) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[sex] [bit] NULL,
	[isadmin] [bit] NULL,
	[regTime] [datetime] NULL,
 CONSTRAINT [PK_tb_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tb_user]') AND name = N'IX_tb_user')
CREATE UNIQUE NONCLUSTERED INDEX [IX_tb_user] ON [dbo].[tb_user] 
(
	[userName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
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
SET IDENTITY_INSERT [dbo].[tb_user] ON
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (1, N'cyxx', N'1111222x', N'hdjd@qq.com', N'ads', 1, 1, CAST(0x00009FEC00000000 AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (4, N'yhtt2020', N'1111222', N'fggsffeef@qq.com', N'12121212', 1, 1, CAST(0x0000A0E60168521C AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (6, N'yhtt2010', N'1111222', N'yhtt@qq.com', N'276905621', 1, 0, CAST(0x0000A0E6016A7976 AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (9, N'greatebig', N'1111222', N'adwaw@qq.com', N'23123123', 0, 0, CAST(0x0000A0E6016B369B AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (13, N'yhtt20201', N'1111222', N'2321@qq.com', N'123', 0, 0, CAST(0x0000A0E60172D9FE AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_user] OFF
/****** Object:  Table [dbo].[tb_code]    Script Date: 11/14/2012 21:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_code]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_code](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NULL,
	[upTime] [datetime] NULL,
	[uid] [int] NULL,
	[lid] [int] NULL,
	[path] [varchar](500) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_tb_code] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[tb_code] ON
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3231, 6, CAST(0x0000A1090153CFE1 AS DateTime), 4, 3, N'\6\新建文件夹\About.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3232, 6, CAST(0x0000A1090153CFE1 AS DateTime), 4, 3, N'\6\新建文件夹\About.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3233, 6, CAST(0x0000A1090153CFEA AS DateTime), 4, 3, N'\6\新建文件夹\BigLogin.ascx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3234, 6, CAST(0x0000A1090153CFEA AS DateTime), 4, 3, N'\6\新建文件夹\BigLogin.ascx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3235, 6, CAST(0x0000A1090153CFEF AS DateTime), 4, 3, N'\6\新建文件夹\Default.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3236, 6, CAST(0x0000A1090153CFEF AS DateTime), 4, 3, N'\6\新建文件夹\Default.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3237, 6, CAST(0x0000A1090153CFEF AS DateTime), 4, 6, N'\6\新建文件夹\layout.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3238, 6, CAST(0x0000A1090153CFEF AS DateTime), 4, 6, N'\6\新建文件夹\layout.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3239, 6, CAST(0x0000A1090153CFEF AS DateTime), 4, 3, N'\6\新建文件夹\Login.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3240, 6, CAST(0x0000A1090153CFEF AS DateTime), 4, 3, N'\6\新建文件夹\Login.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3241, 6, CAST(0x0000A1090153CFEF AS DateTime), 4, 3, N'\6\新建文件夹\LoginPanel.ascx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3242, 6, CAST(0x0000A1090153CFEF AS DateTime), 4, 3, N'\6\新建文件夹\LoginPanel.ascx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3243, 6, CAST(0x0000A1090153CFEF AS DateTime), 4, 3, N'\6\新建文件夹\Logout.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3244, 6, CAST(0x0000A1090153CFEF AS DateTime), 4, 3, N'\6\新建文件夹\Logout.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3245, 6, CAST(0x0000A1090153CFF3 AS DateTime), 4, 3, N'\6\新建文件夹\MasterPage.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3246, 6, CAST(0x0000A1090153CFF3 AS DateTime), 4, 3, N'\6\新建文件夹\MasterPage.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3247, 6, CAST(0x0000A1090153CFF3 AS DateTime), 4, 3, N'\6\新建文件夹\Projects.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3248, 6, CAST(0x0000A1090153CFF3 AS DateTime), 4, 3, N'\6\新建文件夹\Projects.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3249, 6, CAST(0x0000A1090153CFF3 AS DateTime), 4, 3, N'\6\新建文件夹\Redirect.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3250, 6, CAST(0x0000A1090153CFF3 AS DateTime), 4, 3, N'\6\新建文件夹\Redirect.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3251, 6, CAST(0x0000A1090153CFF3 AS DateTime), 4, 3, N'\6\新建文件夹\Reg.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3252, 6, CAST(0x0000A1090153CFF3 AS DateTime), 4, 3, N'\6\新建文件夹\Reg.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3253, 6, CAST(0x0000A1090153CFF3 AS DateTime), 4, 3, N'\6\新建文件夹\toAlert.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3254, 6, CAST(0x0000A1090153CFF3 AS DateTime), 4, 3, N'\6\新建文件夹\toAlert.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3255, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\Upload.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3256, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\Upload.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3257, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\User.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3258, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\User.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3259, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\admin\AddProject.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3260, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\admin\AddProject.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3261, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\admin\AddUser.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3262, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\admin\AddUser.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3263, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\admin\Default.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3264, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\admin\Default.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3265, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\admin\DelUser.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3266, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\admin\DelUser.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3267, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\admin\EditUser.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3268, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\admin\EditUser.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3269, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\admin\MasterInside.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3270, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\admin\MasterInside.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3271, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\admin\MasterPage.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3272, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\admin\MasterPage.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3273, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\admin\Master_Source.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3274, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\admin\Master_Source.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3275, 6, CAST(0x0000A1090153CFF8 AS DateTime), 4, 3, N'\6\新建文件夹\admin\Master_User.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3276, 6, CAST(0x0000A1090153CFFD AS DateTime), 4, 3, N'\6\新建文件夹\admin\Master_User.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3277, 6, CAST(0x0000A1090153CFFD AS DateTime), 4, 3, N'\6\新建文件夹\admin\ProjectList.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3278, 6, CAST(0x0000A1090153CFFD AS DateTime), 4, 3, N'\6\新建文件夹\admin\ProjectList.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3279, 6, CAST(0x0000A1090153CFFD AS DateTime), 4, 3, N'\6\新建文件夹\admin\RSManager.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3280, 6, CAST(0x0000A1090153CFFD AS DateTime), 4, 3, N'\6\新建文件夹\admin\RSManager.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3281, 6, CAST(0x0000A1090153CFFD AS DateTime), 4, 3, N'\6\新建文件夹\admin\UploadSource.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3282, 6, CAST(0x0000A1090153CFFD AS DateTime), 4, 3, N'\6\新建文件夹\admin\UploadSource.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3283, 6, CAST(0x0000A1090153CFFD AS DateTime), 4, 3, N'\6\新建文件夹\admin\UserList.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3284, 6, CAST(0x0000A1090153CFFD AS DateTime), 4, 3, N'\6\新建文件夹\admin\UserList.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3285, 6, CAST(0x0000A1090153CFFD AS DateTime), 4, 3, N'\6\新建文件夹\admin\RSManager\RSManager.ascx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3286, 6, CAST(0x0000A1090153CFFD AS DateTime), 4, 3, N'\6\新建文件夹\admin\RSManager\RSManager.ascx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3287, 6, CAST(0x0000A1090153CFFD AS DateTime), 4, 6, N'\6\新建文件夹\admin\RSManager\images\RSManager.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3288, 6, CAST(0x0000A1090153CFFD AS DateTime), 4, 6, N'\6\新建文件夹\admin\RSManager\images\RSManager.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3289, 6, CAST(0x0000A1090153CFFD AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\CookieManager.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3290, 6, CAST(0x0000A1090153CFFD AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\CookieManager.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3291, 6, CAST(0x0000A1090153CFFD AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\DataBase.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3292, 6, CAST(0x0000A1090153CFFD AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\DataBase.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3293, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\DataOperate.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3294, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\DataOperate.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3295, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\SmallScript.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3296, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\SmallScript.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3297, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\UserCenter.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3298, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\UserCenter.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3299, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Common\UnPackHelper.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3300, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Common\UnPackHelper.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3301, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Const\AppConfiger.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3302, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Const\AppConfiger.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3303, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Entity\CodeEntity.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3304, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Entity\CodeEntity.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3305, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Entity\LangEntity.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3306, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Entity\LangEntity.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3307, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Entity\ProjectEntity.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3308, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Entity\ProjectEntity.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3309, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Entity\UserEntity.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3310, 6, CAST(0x0000A1090153D002 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Entity\UserEntity.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3311, 6, CAST(0x0000A1090153D006 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Entity\ZipManager.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3312, 6, CAST(0x0000A1090153D006 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Entity\ZipManager.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3313, 6, CAST(0x0000A1090153D006 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\lib\ProjectManager.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3314, 6, CAST(0x0000A1090153D006 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\lib\ProjectManager.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3315, 6, CAST(0x0000A1090153D006 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Model\ProjectOperation.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3316, 6, CAST(0x0000A1090153D006 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Model\ProjectOperation.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3317, 6, CAST(0x0000A1090153D006 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Model\UserOperation.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3318, 6, CAST(0x0000A1090153D006 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Model\UserOperation.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3319, 6, CAST(0x0000A1090153D006 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Part\SessionRestr.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3320, 6, CAST(0x0000A1090153D006 AS DateTime), 4, 3, N'\6\新建文件夹\App_Code\Part\SessionRestr.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3321, 6, CAST(0x0000A1090153D006 AS DateTime), 4, 6, N'\6\新建文件夹\css\Tabs.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3322, 6, CAST(0x0000A1090153D006 AS DateTime), 4, 6, N'\6\新建文件夹\css\Tabs.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3323, 6, CAST(0x0000A1090153D006 AS DateTime), 4, 9, N'\6\新建文件夹\db\sql_2005.sql')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3324, 6, CAST(0x0000A1090153D006 AS DateTime), 4, 9, N'\6\新建文件夹\db\sql_2005.sql')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3325, 6, CAST(0x0000A1090153D006 AS DateTime), 4, 9, N'\6\新建文件夹\db\zcoderLastest2005.sql')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3326, 6, CAST(0x0000A1090153D006 AS DateTime), 4, 9, N'\6\新建文件夹\db\zcoderLastest2005.sql')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3327, 6, CAST(0x0000A1090153D006 AS DateTime), 4, 4, N'\6\新建文件夹\images\jquery.min.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3328, 6, CAST(0x0000A1090153D00B AS DateTime), 4, 4, N'\6\新建文件夹\images\jquery.min.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3329, 6, CAST(0x0000A1090153D00B AS DateTime), 4, 4, N'\6\新建文件夹\js\jquery-1.7.2.min.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3330, 6, CAST(0x0000A1090153D00B AS DateTime), 4, 4, N'\6\新建文件夹\js\jquery-1.7.2.min.js')
GO
print 'Processed 100 total records'
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3331, 6, CAST(0x0000A1090153D00B AS DateTime), 4, 4, N'\6\新建文件夹\js\jquery.uploadify.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3332, 6, CAST(0x0000A1090153D00B AS DateTime), 4, 4, N'\6\新建文件夹\js\jquery.uploadify.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3333, 6, CAST(0x0000A1090153D00B AS DateTime), 4, 4, N'\6\新建文件夹\js\jquery.uploadify.min.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3334, 6, CAST(0x0000A1090153D00B AS DateTime), 4, 4, N'\6\新建文件夹\js\jquery.uploadify.min.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3335, 6, CAST(0x0000A1090153D00B AS DateTime), 4, 4, N'\6\新建文件夹\js\jquery1.3.2.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3336, 6, CAST(0x0000A1090153D00B AS DateTime), 4, 4, N'\6\新建文件夹\js\jquery1.3.2.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3337, 6, CAST(0x0000A1090153D00B AS DateTime), 4, 4, N'\6\新建文件夹\js\Tabs.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3338, 6, CAST(0x0000A1090153D00B AS DateTime), 4, 4, N'\6\新建文件夹\js\Tabs.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3339, 6, CAST(0x0000A1090153D00B AS DateTime), 4, 6, N'\6\新建文件夹\js\uploadify.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3340, 6, CAST(0x0000A1090153D00B AS DateTime), 4, 6, N'\6\新建文件夹\js\uploadify.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3341, 6, CAST(0x0000A1090153D00B AS DateTime), 4, 4, N'\6\新建文件夹\js\upZH.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3342, 6, CAST(0x0000A1090153D00B AS DateTime), 4, 4, N'\6\新建文件夹\js\upZH.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3343, 7, CAST(0x0000A1090153F546 AS DateTime), 4, 7, N'\7\js\check-exists.php')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3344, 7, CAST(0x0000A1090153F546 AS DateTime), 4, 7, N'\7\js\check-exists.php')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3345, 7, CAST(0x0000A1090153F546 AS DateTime), 4, 7, N'\7\js\index.php')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3346, 7, CAST(0x0000A1090153F546 AS DateTime), 4, 7, N'\7\js\index.php')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3347, 7, CAST(0x0000A1090153F546 AS DateTime), 4, 4, N'\7\js\jquery.uploadify.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3348, 7, CAST(0x0000A1090153F546 AS DateTime), 4, 4, N'\7\js\jquery.uploadify.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3349, 7, CAST(0x0000A1090153F546 AS DateTime), 4, 4, N'\7\js\jquery.uploadify.min.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3350, 7, CAST(0x0000A1090153F546 AS DateTime), 4, 4, N'\7\js\jquery.uploadify.min.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3351, 7, CAST(0x0000A1090153F546 AS DateTime), 4, 6, N'\7\js\uploadify.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3352, 7, CAST(0x0000A1090153F546 AS DateTime), 4, 6, N'\7\js\uploadify.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3353, 7, CAST(0x0000A1090153F546 AS DateTime), 4, 7, N'\7\js\uploadify.php')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3354, 7, CAST(0x0000A1090153F546 AS DateTime), 4, 7, N'\7\js\uploadify.php')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3355, 5, CAST(0x0000A109015F905E AS DateTime), 4, 3, N'\5\新建文件夹\About.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3356, 5, CAST(0x0000A109015F905E AS DateTime), 4, 3, N'\5\新建文件夹\About.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3357, 5, CAST(0x0000A109015F905E AS DateTime), 4, 3, N'\5\新建文件夹\BigLogin.ascx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3358, 5, CAST(0x0000A109015F905E AS DateTime), 4, 3, N'\5\新建文件夹\BigLogin.ascx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3359, 5, CAST(0x0000A109015F905E AS DateTime), 4, 3, N'\5\新建文件夹\Default.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3360, 5, CAST(0x0000A109015F905E AS DateTime), 4, 3, N'\5\新建文件夹\Default.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3361, 5, CAST(0x0000A109015F9063 AS DateTime), 4, 6, N'\5\新建文件夹\layout.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3362, 5, CAST(0x0000A109015F9063 AS DateTime), 4, 6, N'\5\新建文件夹\layout.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3363, 5, CAST(0x0000A109015F9063 AS DateTime), 4, 3, N'\5\新建文件夹\Login.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3364, 5, CAST(0x0000A109015F9067 AS DateTime), 4, 3, N'\5\新建文件夹\Login.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3365, 5, CAST(0x0000A109015F9067 AS DateTime), 4, 3, N'\5\新建文件夹\LoginPanel.ascx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3366, 5, CAST(0x0000A109015F9067 AS DateTime), 4, 3, N'\5\新建文件夹\LoginPanel.ascx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3367, 5, CAST(0x0000A109015F9067 AS DateTime), 4, 3, N'\5\新建文件夹\Logout.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3368, 5, CAST(0x0000A109015F9067 AS DateTime), 4, 3, N'\5\新建文件夹\Logout.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3369, 5, CAST(0x0000A109015F906C AS DateTime), 4, 3, N'\5\新建文件夹\MasterPage.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3370, 5, CAST(0x0000A109015F906C AS DateTime), 4, 3, N'\5\新建文件夹\MasterPage.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3371, 5, CAST(0x0000A109015F906C AS DateTime), 4, 3, N'\5\新建文件夹\Projects.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3372, 5, CAST(0x0000A109015F9071 AS DateTime), 4, 3, N'\5\新建文件夹\Projects.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3373, 5, CAST(0x0000A109015F9075 AS DateTime), 4, 3, N'\5\新建文件夹\Redirect.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3374, 5, CAST(0x0000A109015F9075 AS DateTime), 4, 3, N'\5\新建文件夹\Redirect.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3375, 5, CAST(0x0000A109015F907F AS DateTime), 4, 3, N'\5\新建文件夹\Reg.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3376, 5, CAST(0x0000A109015F907F AS DateTime), 4, 3, N'\5\新建文件夹\Reg.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3377, 5, CAST(0x0000A109015F9084 AS DateTime), 4, 3, N'\5\新建文件夹\toAlert.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3378, 5, CAST(0x0000A109015F9084 AS DateTime), 4, 3, N'\5\新建文件夹\toAlert.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3379, 5, CAST(0x0000A109015F9084 AS DateTime), 4, 3, N'\5\新建文件夹\Upload.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3380, 5, CAST(0x0000A109015F9088 AS DateTime), 4, 3, N'\5\新建文件夹\Upload.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3381, 5, CAST(0x0000A109015F9088 AS DateTime), 4, 3, N'\5\新建文件夹\User.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3382, 5, CAST(0x0000A109015F908D AS DateTime), 4, 3, N'\5\新建文件夹\User.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3383, 5, CAST(0x0000A109015F908D AS DateTime), 4, 3, N'\5\新建文件夹\admin\AddProject.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3384, 5, CAST(0x0000A109015F908D AS DateTime), 4, 3, N'\5\新建文件夹\admin\AddProject.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3385, 5, CAST(0x0000A109015F908D AS DateTime), 4, 3, N'\5\新建文件夹\admin\AddUser.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3386, 5, CAST(0x0000A109015F908D AS DateTime), 4, 3, N'\5\新建文件夹\admin\AddUser.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3387, 5, CAST(0x0000A109015F908D AS DateTime), 4, 3, N'\5\新建文件夹\admin\Default.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3388, 5, CAST(0x0000A109015F908D AS DateTime), 4, 3, N'\5\新建文件夹\admin\Default.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3389, 5, CAST(0x0000A109015F908D AS DateTime), 4, 3, N'\5\新建文件夹\admin\DelUser.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3390, 5, CAST(0x0000A109015F908D AS DateTime), 4, 3, N'\5\新建文件夹\admin\DelUser.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3391, 5, CAST(0x0000A109015F908D AS DateTime), 4, 3, N'\5\新建文件夹\admin\EditUser.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3392, 5, CAST(0x0000A109015F9091 AS DateTime), 4, 3, N'\5\新建文件夹\admin\EditUser.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3393, 5, CAST(0x0000A109015F9091 AS DateTime), 4, 3, N'\5\新建文件夹\admin\MasterInside.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3394, 5, CAST(0x0000A109015F9091 AS DateTime), 4, 3, N'\5\新建文件夹\admin\MasterInside.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3395, 5, CAST(0x0000A109015F9091 AS DateTime), 4, 3, N'\5\新建文件夹\admin\MasterPage.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3396, 5, CAST(0x0000A109015F9091 AS DateTime), 4, 3, N'\5\新建文件夹\admin\MasterPage.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3397, 5, CAST(0x0000A109015F9096 AS DateTime), 4, 3, N'\5\新建文件夹\admin\Master_Source.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3398, 5, CAST(0x0000A109015F9096 AS DateTime), 4, 3, N'\5\新建文件夹\admin\Master_Source.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3399, 5, CAST(0x0000A109015F9096 AS DateTime), 4, 3, N'\5\新建文件夹\admin\Master_User.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3400, 5, CAST(0x0000A109015F9096 AS DateTime), 4, 3, N'\5\新建文件夹\admin\Master_User.master.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3401, 5, CAST(0x0000A109015F909B AS DateTime), 4, 3, N'\5\新建文件夹\admin\ProjectList.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3402, 5, CAST(0x0000A109015F909B AS DateTime), 4, 3, N'\5\新建文件夹\admin\ProjectList.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3403, 5, CAST(0x0000A109015F909B AS DateTime), 4, 3, N'\5\新建文件夹\admin\RSManager.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3404, 5, CAST(0x0000A109015F909B AS DateTime), 4, 3, N'\5\新建文件夹\admin\RSManager.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3405, 5, CAST(0x0000A109015F909B AS DateTime), 4, 3, N'\5\新建文件夹\admin\UploadSource.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3406, 5, CAST(0x0000A109015F909B AS DateTime), 4, 3, N'\5\新建文件夹\admin\UploadSource.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3407, 5, CAST(0x0000A109015F909B AS DateTime), 4, 3, N'\5\新建文件夹\admin\UserList.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3408, 5, CAST(0x0000A109015F909B AS DateTime), 4, 3, N'\5\新建文件夹\admin\UserList.aspx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3409, 5, CAST(0x0000A109015F909B AS DateTime), 4, 3, N'\5\新建文件夹\admin\RSManager\RSManager.ascx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3410, 5, CAST(0x0000A109015F909B AS DateTime), 4, 3, N'\5\新建文件夹\admin\RSManager\RSManager.ascx.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3411, 5, CAST(0x0000A109015F909F AS DateTime), 4, 6, N'\5\新建文件夹\admin\RSManager\images\RSManager.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3412, 5, CAST(0x0000A109015F909F AS DateTime), 4, 6, N'\5\新建文件夹\admin\RSManager\images\RSManager.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3413, 5, CAST(0x0000A109015F909F AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\CookieManager.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3414, 5, CAST(0x0000A109015F90A4 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\CookieManager.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3415, 5, CAST(0x0000A109015F90A4 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\DataBase.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3416, 5, CAST(0x0000A109015F90A4 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\DataBase.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3417, 5, CAST(0x0000A109015F90A4 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\DataOperate.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3418, 5, CAST(0x0000A109015F90A4 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\DataOperate.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3419, 5, CAST(0x0000A109015F90A4 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\SmallScript.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3420, 5, CAST(0x0000A109015F90A4 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\SmallScript.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3421, 5, CAST(0x0000A109015F90A4 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\UserCenter.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3422, 5, CAST(0x0000A109015F90A9 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\UserCenter.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3423, 5, CAST(0x0000A109015F90A9 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Common\UnPackHelper.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3424, 5, CAST(0x0000A109015F90A9 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Common\UnPackHelper.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3425, 5, CAST(0x0000A109015F90A9 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Const\AppConfiger.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3426, 5, CAST(0x0000A109015F90A9 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Const\AppConfiger.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3427, 5, CAST(0x0000A109015F90A9 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Entity\CodeEntity.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3428, 5, CAST(0x0000A109015F90A9 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Entity\CodeEntity.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3429, 5, CAST(0x0000A109015F90A9 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Entity\LangEntity.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3430, 5, CAST(0x0000A109015F90A9 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Entity\LangEntity.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3431, 5, CAST(0x0000A109015F90A9 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Entity\ProjectEntity.cs')
GO
print 'Processed 200 total records'
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3432, 5, CAST(0x0000A109015F90AE AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Entity\ProjectEntity.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3433, 5, CAST(0x0000A109015F90AE AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Entity\UserEntity.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3434, 5, CAST(0x0000A109015F90AE AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Entity\UserEntity.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3435, 5, CAST(0x0000A109015F90AE AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Entity\ZipManager.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3436, 5, CAST(0x0000A109015F90AE AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Entity\ZipManager.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3437, 5, CAST(0x0000A109015F90AE AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\lib\ProjectManager.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3438, 5, CAST(0x0000A109015F90AE AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\lib\ProjectManager.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3439, 5, CAST(0x0000A109015F90AE AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Model\ProjectOperation.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3440, 5, CAST(0x0000A109015F90AE AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Model\ProjectOperation.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3441, 5, CAST(0x0000A109015F90AE AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Model\UserOperation.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3442, 5, CAST(0x0000A109015F90AE AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Model\UserOperation.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3443, 5, CAST(0x0000A109015F90AE AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Part\SessionRestr.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3444, 5, CAST(0x0000A109015F90B2 AS DateTime), 4, 3, N'\5\新建文件夹\App_Code\Part\SessionRestr.cs')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3445, 5, CAST(0x0000A109015F90B2 AS DateTime), 4, 6, N'\5\新建文件夹\css\Tabs.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3446, 5, CAST(0x0000A109015F90B2 AS DateTime), 4, 6, N'\5\新建文件夹\css\Tabs.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3447, 5, CAST(0x0000A109015F90B7 AS DateTime), 4, 9, N'\5\新建文件夹\db\sql_2005.sql')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3448, 5, CAST(0x0000A109015F90BC AS DateTime), 4, 9, N'\5\新建文件夹\db\sql_2005.sql')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3449, 5, CAST(0x0000A109015F90BC AS DateTime), 4, 9, N'\5\新建文件夹\db\zcoderLastest2005.sql')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3450, 5, CAST(0x0000A109015F90BC AS DateTime), 4, 9, N'\5\新建文件夹\db\zcoderLastest2005.sql')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3451, 5, CAST(0x0000A109015F90BC AS DateTime), 4, 4, N'\5\新建文件夹\images\jquery.min.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3452, 5, CAST(0x0000A109015F90BC AS DateTime), 4, 4, N'\5\新建文件夹\images\jquery.min.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3453, 5, CAST(0x0000A109015F90BC AS DateTime), 4, 4, N'\5\新建文件夹\js\jquery-1.7.2.min.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3454, 5, CAST(0x0000A109015F90C0 AS DateTime), 4, 4, N'\5\新建文件夹\js\jquery-1.7.2.min.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3455, 5, CAST(0x0000A109015F90C0 AS DateTime), 4, 4, N'\5\新建文件夹\js\jquery.uploadify.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3456, 5, CAST(0x0000A109015F90C0 AS DateTime), 4, 4, N'\5\新建文件夹\js\jquery.uploadify.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3457, 5, CAST(0x0000A109015F90C0 AS DateTime), 4, 4, N'\5\新建文件夹\js\jquery.uploadify.min.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3458, 5, CAST(0x0000A109015F90C0 AS DateTime), 4, 4, N'\5\新建文件夹\js\jquery.uploadify.min.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3459, 5, CAST(0x0000A109015F90C0 AS DateTime), 4, 4, N'\5\新建文件夹\js\jquery1.3.2.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3460, 5, CAST(0x0000A109015F90C0 AS DateTime), 4, 4, N'\5\新建文件夹\js\jquery1.3.2.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3461, 5, CAST(0x0000A109015F90C5 AS DateTime), 4, 4, N'\5\新建文件夹\js\Tabs.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3462, 5, CAST(0x0000A109015F90C5 AS DateTime), 4, 4, N'\5\新建文件夹\js\Tabs.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3463, 5, CAST(0x0000A109015F90C5 AS DateTime), 4, 6, N'\5\新建文件夹\js\uploadify.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3464, 5, CAST(0x0000A109015F90C5 AS DateTime), 4, 6, N'\5\新建文件夹\js\uploadify.css')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3465, 5, CAST(0x0000A109015F90C5 AS DateTime), 4, 4, N'\5\新建文件夹\js\upZH.js')
INSERT [dbo].[tb_code] ([id], [pid], [upTime], [uid], [lid], [path]) VALUES (3466, 5, CAST(0x0000A109015F90C5 AS DateTime), 4, 4, N'\5\新建文件夹\js\upZH.js')
SET IDENTITY_INSERT [dbo].[tb_code] OFF
/****** Object:  Table [dbo].[tb_lang]    Script Date: 11/14/2012 21:25:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_lang]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_lang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[description] [varchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[ext] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[brushName] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[brushAliases] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[brushFile] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_tb_lang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
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
SET IDENTITY_INSERT [dbo].[tb_lang] ON
INSERT [dbo].[tb_lang] ([id], [name], [description], [ext], [brushName], [brushAliases], [brushFile]) VALUES (1, N'C++', N'C++程序语言', N'cpp,c', N'cpp', N'cpp', N'shBrushCpp.js')
INSERT [dbo].[tb_lang] ([id], [name], [description], [ext], [brushName], [brushAliases], [brushFile]) VALUES (2, N'Java', N'Java', N'java', N'java', N'java', N'shBrushJava.js')
INSERT [dbo].[tb_lang] ([id], [name], [description], [ext], [brushName], [brushAliases], [brushFile]) VALUES (3, N'CSharp', N'C#是微软公司发布的一种面向对象的、运行于.NET Framework之上的高级程序设计语言。', N'cs', N'C#', N'csharp', N'shBrushCSharp.js')
INSERT [dbo].[tb_lang] ([id], [name], [description], [ext], [brushName], [brushAliases], [brushFile]) VALUES (4, N'JavaScript', N'JS', N'js', N'JavaScript', N'js', N'shBrushJScript.js')
INSERT [dbo].[tb_lang] ([id], [name], [description], [ext], [brushName], [brushAliases], [brushFile]) VALUES (5, N'XML', N'html', N'xml, xhtml, xslt, html, xhtml', N'XML', N'xml', N'shBrushXml.js')
INSERT [dbo].[tb_lang] ([id], [name], [description], [ext], [brushName], [brushAliases], [brushFile]) VALUES (6, N'css', N'css', N'css', N'css', N'css', N'shBrushCss.js')
INSERT [dbo].[tb_lang] ([id], [name], [description], [ext], [brushName], [brushAliases], [brushFile]) VALUES (7, N'php', N'PHP，是英文超文本预处理语言Hypertext Preprocessor的缩写。PHP 是一种 HTML 内嵌式的语言，是一种在服务器端执行的嵌入HTML文档的脚本语言，语言的风格有类似于C语言，被广泛地运用。 ', N'php', N'php', N'php', N'shBrushPhp.js')
INSERT [dbo].[tb_lang] ([id], [name], [description], [ext], [brushName], [brushAliases], [brushFile]) VALUES (8, N'Python', N'是一种面向对象、直译式计算机程序设计语言，由Guido van Rossum于1989年底发明，第一个公开发行版发行于1991年。', N'py, python', N'py', N'py', N'shBrushRuby.js')
INSERT [dbo].[tb_lang] ([id], [name], [description], [ext], [brushName], [brushAliases], [brushFile]) VALUES (9, N'sql', N'结构化查询语言(Structured Query Language)简称SQL，结构化查询语言是一种数据库查询和程序设计语言，用于存取数据以及查询、更新和管理关系数据库系统；同时也是数据库脚本文件的扩展名。', N'sql', N'sql', N'sql', N'shBrushSql.js')
SET IDENTITY_INSERT [dbo].[tb_lang] OFF
/****** Object:  Default [DF_tb_code_upTime]    Script Date: 11/14/2012 21:25:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_code_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_code]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_code_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_code] ADD  CONSTRAINT [DF_tb_code_upTime]  DEFAULT (getdate()) FOR [upTime]
END


End
GO
/****** Object:  Default [DF_tb_comment_uptime]    Script Date: 11/14/2012 21:25:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_comment_uptime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_comment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_comment_uptime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_comment] ADD  CONSTRAINT [DF_tb_comment_uptime]  DEFAULT (getdate()) FOR [uptime]
END


End
GO
/****** Object:  Default [DF_tb_note_upTime]    Script Date: 11/14/2012 21:25:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_note_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_note]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_note_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_note] ADD  CONSTRAINT [DF_tb_note_upTime]  DEFAULT (getdate()) FOR [upTime]
END


End
GO
/****** Object:  Default [DF_tb_project_upTime]    Script Date: 11/14/2012 21:25:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_project_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_project]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_project_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_project] ADD  CONSTRAINT [DF_tb_project_upTime]  DEFAULT (getdate()) FOR [upTime]
END


End
GO
/****** Object:  Default [DF_tb_user_sex]    Script Date: 11/14/2012 21:25:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_sex]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_sex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] ADD  CONSTRAINT [DF_tb_user_sex]  DEFAULT ((1)) FOR [sex]
END


End
GO
/****** Object:  Default [DF_tb_user_isadmin]    Script Date: 11/14/2012 21:25:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_isadmin]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_isadmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] ADD  CONSTRAINT [DF_tb_user_isadmin]  DEFAULT ((0)) FOR [isadmin]
END


End
GO
/****** Object:  Default [DF_tb_user_regTime]    Script Date: 11/14/2012 21:25:34 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_regTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_regTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] ADD  CONSTRAINT [DF_tb_user_regTime]  DEFAULT (getdate()) FOR [regTime]
END


End
GO
