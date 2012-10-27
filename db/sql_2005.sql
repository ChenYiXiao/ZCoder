/****** Object:  Table [dbo].[tb_user]    Script Date: 10/27/2012 19:10:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_user]') AND type in (N'U'))
DROP TABLE [dbo].[tb_user]
GO
/****** Object:  Table [dbo].[tb_code]    Script Date: 10/27/2012 19:10:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_code]') AND type in (N'U'))
DROP TABLE [dbo].[tb_code]
GO
/****** Object:  Table [dbo].[tb_type]    Script Date: 10/27/2012 19:10:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_type]') AND type in (N'U'))
DROP TABLE [dbo].[tb_type]
GO
/****** Object:  Table [dbo].[tb_project]    Script Date: 10/27/2012 19:10:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_project]') AND type in (N'U'))
DROP TABLE [dbo].[tb_project]
GO
/****** Object:  Table [dbo].[tb_note]    Script Date: 10/27/2012 19:10:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_note]') AND type in (N'U'))
DROP TABLE [dbo].[tb_note]
GO
/****** Object:  Table [dbo].[tb_comment]    Script Date: 10/27/2012 19:10:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_comment]') AND type in (N'U'))
DROP TABLE [dbo].[tb_comment]
GO
/****** Object:  Default [DF_tb_code_upTime]    Script Date: 10/27/2012 19:10:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_code_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_code]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_code_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_code] DROP CONSTRAINT [DF_tb_code_upTime]
END


End
GO
/****** Object:  Default [DF_tb_comment_uptime]    Script Date: 10/27/2012 19:10:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_comment_uptime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_comment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_comment_uptime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_comment] DROP CONSTRAINT [DF_tb_comment_uptime]
END


End
GO
/****** Object:  Default [DF_tb_note_upTime]    Script Date: 10/27/2012 19:10:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_note_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_note]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_note_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_note] DROP CONSTRAINT [DF_tb_note_upTime]
END


End
GO
/****** Object:  Default [DF_tb_project_upTime]    Script Date: 10/27/2012 19:10:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_project_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_project]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_project_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_project] DROP CONSTRAINT [DF_tb_project_upTime]
END


End
GO
/****** Object:  Default [DF_tb_user_sex]    Script Date: 10/27/2012 19:10:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_sex]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_sex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] DROP CONSTRAINT [DF_tb_user_sex]
END


End
GO
/****** Object:  Default [DF_tb_user_isadmin]    Script Date: 10/27/2012 19:10:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_isadmin]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_isadmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] DROP CONSTRAINT [DF_tb_user_isadmin]
END


End
GO
/****** Object:  Default [DF_tb_user_regTime]    Script Date: 10/27/2012 19:10:55 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_regTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_regTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] DROP CONSTRAINT [DF_tb_user_regTime]
END


End
GO
/****** Object:  Table [dbo].[tb_comment]    Script Date: 10/27/2012 19:10:55 ******/
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
/****** Object:  Table [dbo].[tb_note]    Script Date: 10/27/2012 19:10:55 ******/
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
/****** Object:  Table [dbo].[tb_project]    Script Date: 10/27/2012 19:10:55 ******/
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
/****** Object:  Table [dbo].[tb_type]    Script Date: 10/27/2012 19:10:55 ******/
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
/****** Object:  Table [dbo].[tb_code]    Script Date: 10/27/2012 19:10:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tb_code]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tb_code](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[pid] [int] NULL,
	[upTime] [datetime] NULL,
	[uid] [int] NULL,
 CONSTRAINT [PK_tb_code] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tb_user]    Script Date: 10/27/2012 19:10:55 ******/
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
SET IDENTITY_INSERT [dbo].[tb_user] ON
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (1, N'cyx', N'1111222', N'yhtt', N'2313123', 1, 1, CAST(0x00009FEC00000000 AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (2, N'a', N'a', N'a', N'a', 1, 0, CAST(0x0000A0E60114465F AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (3, N'123', N'123', N'123', N'321', 1, 0, CAST(0x0000A0E601682843 AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (4, N'yhtt2020', N'1111222', N'ew', N'12', 1, 1, CAST(0x0000A0E60168521C AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (6, N'yhtt2010', N'1111222', N'yhtt@qq.com', N'276905621', 1, 0, CAST(0x0000A0E6016A7976 AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (7, N'132', N'1111', N'123', N'312', 1, 0, CAST(0x0000A0E6016AF40D AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (9, N'', N'', N'', N'', 1, 0, CAST(0x0000A0E6016B369B AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (10, N'1', N'123456', N'213@qq.com', N'123321', 1, 0, CAST(0x0000A0E6016C279D AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (11, N'a2', N'1111222', N'123@qq.com', N'1234', 1, 0, CAST(0x0000A0E6016C6DC9 AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (13, N'yhtt20201', N'1111222', N'213@11.com', N'123', 1, 0, CAST(0x0000A0E60172D9FE AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (14, N'chenyixiao', N'1111222', N'yh@qq.com', N'2777888', 1, 0, CAST(0x0000A0EE00862C3A AS DateTime))
INSERT [dbo].[tb_user] ([id], [userName], [password], [email], [qq], [sex], [isadmin], [regTime]) VALUES (15, N'asd', N'asdfghj', N'asdhj@163.com', N'1245678999', 1, 0, CAST(0x0000A0EE009A356F AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_user] OFF
/****** Object:  Default [DF_tb_code_upTime]    Script Date: 10/27/2012 19:10:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_code_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_code]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_code_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_code] ADD  CONSTRAINT [DF_tb_code_upTime]  DEFAULT (getdate()) FOR [upTime]
END


End
GO
/****** Object:  Default [DF_tb_comment_uptime]    Script Date: 10/27/2012 19:10:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_comment_uptime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_comment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_comment_uptime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_comment] ADD  CONSTRAINT [DF_tb_comment_uptime]  DEFAULT (getdate()) FOR [uptime]
END


End
GO
/****** Object:  Default [DF_tb_note_upTime]    Script Date: 10/27/2012 19:10:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_note_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_note]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_note_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_note] ADD  CONSTRAINT [DF_tb_note_upTime]  DEFAULT (getdate()) FOR [upTime]
END


End
GO
/****** Object:  Default [DF_tb_project_upTime]    Script Date: 10/27/2012 19:10:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_project_upTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_project]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_project_upTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_project] ADD  CONSTRAINT [DF_tb_project_upTime]  DEFAULT (getdate()) FOR [upTime]
END


End
GO
/****** Object:  Default [DF_tb_user_sex]    Script Date: 10/27/2012 19:10:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_sex]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_sex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] ADD  CONSTRAINT [DF_tb_user_sex]  DEFAULT ((1)) FOR [sex]
END


End
GO
/****** Object:  Default [DF_tb_user_isadmin]    Script Date: 10/27/2012 19:10:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_isadmin]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_isadmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] ADD  CONSTRAINT [DF_tb_user_isadmin]  DEFAULT ((0)) FOR [isadmin]
END


End
GO
/****** Object:  Default [DF_tb_user_regTime]    Script Date: 10/27/2012 19:10:55 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_tb_user_regTime]') AND parent_object_id = OBJECT_ID(N'[dbo].[tb_user]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_tb_user_regTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tb_user] ADD  CONSTRAINT [DF_tb_user_regTime]  DEFAULT (getdate()) FOR [regTime]
END


End
GO
