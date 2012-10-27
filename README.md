ZCoder项目介绍
本项目仅限于工商大学软件1001班同学ZCoder代码社会化注释开发小组编辑
======
git本项目请先下载
1.乌龟git http://tortoisegit.googlecode.com/files/TortoiseGit-1.7.14.0-32bit.msi
2.msysgit http://code.google.com/p/msysgit/downloads/detail?name=Git-1.7.11-preview20120710.exe&can=2&q=
3.安装好之后，使用资源管理器右键菜单内的Git Clone...
4.复制粘贴 https://github.com/ChenYiXiao/ZCoder.git
5.确定即可把项目源码git下来
6.项目源码git后，需要创建数据库，使用sqlserver2005创建数据库，使用项目内的/db/sql_2005.sql文件建立数据库
8.修改sa登录方式为sql验证，密码为cyx276905621
7.修改/web.config配置文件中的连接字符串
<add name="db_ConnectionString" connectionString="Data Source=cyx\sqlexpress;Initial Catalog=zcoder;User ID=sa;Password=cyx276905621"
    providerName="System.Data.SqlClient" />
将DataSource改为你的服务器地址。
8.用VS2012网站打开项目源码
9.运行，测试连接，使用任意用户名登录系统，如果出现错误提示，则证明连接字符串未设置正确。自行百度解决方法。
10.如果要在iis内运行，确保已经安装了.net 4.0并且是在iis安装后安装的，新建网站，设置应用程序池为.net 4.0
   如果.net 4.0不在下拉列表中，自行百度解决方法。提示，在命令提示符
      C:\Windows\Microsoft.NET\Framework\v4.0.30319 下使用-r参数运行aspnet_regiis.exe.
11.如果有任何问题，优先百度解决，培养自行解决问题的能力。
