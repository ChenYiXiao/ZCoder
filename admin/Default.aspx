<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>后台管理</title>
    <link href="styles/layout.css" rel="stylesheet" type="text/css" />
    <link href="styles/wysiwyg.css" rel="stylesheet" type="text/css" />
    <!-- Theme Start -->
    <link href="themes/blue/styles.css" rel="stylesheet" type="text/css" />
    <!-- Theme End -->
    <script type="text/javascript">
        var setCurrent = function (obj) {
            document.getElementById("currentSection").innerHTML = obj.innerHTML;
            document.getElementById("li_Parent").innerHTML = obj.parentNode.parentNode.parentNode.childNodes[0].innerHTML;
            document.getElementById("li_Current").innerHTML = obj.innerHTML;
        }
    </script>
    <script type="text/jscript">
    
    </script>
</head>
<body id="homepage">
    <form id="form1" runat="server">
    <div>
        <div id="header">
            <a href="" title="">
                <img src="img/cp_logo.png" alt="Control Panel" class="logo" /></a>
            <div id="searcharea">
                <p class="left smltxt">
                    <a href="#" title="">高级</a></p>
                <input type="text" class="searchbox" value="快速搜索工程" onclick="if (this.value =='Search control panel...'){this.value=''}" />
               <a href="" value="搜索" class="searchbtn" style=" font-style:normal; color:Black; ">搜索</a></div>
        </div>
        <!-- 顶部面包屑导航 -->
        <div id="breadcrumb">
            <ul>
                <li>
                    <img src="img/icons/icon_breadcrumb.png" alt="当前位置" /></li>
                <li><strong>当前位置:</strong></li>
                <li id="li_Parent"><a href="#" title="">后台管理</a></li>
                <li>/</li>
                <li class="current" id="li_Current">首页</li>
            </ul>
        </div>
        <!-- 顶部面包屑结束 -->
        <!-- 右侧主页面开始 -->
        <div id="rightside">
            <iframe id="maincontent" src="/admin/Enviroment.aspx" width="100%" height="100%"
                frameborder="no" runat="server"></iframe>
        </div>
        <!-- 右侧主页面结束 -->
        <!-- 左边导航 -->
        <div id="leftside">
            <div class="user">
                <img src="img/avatar.png" width="44" height="44" class="hoverimg" alt="Avatar" />
                <p>
                    当前用户:</p>
                <p class="username">
                    <%=Session["username"].ToString() %></p>
                <p class="userbtn">
                    <a href="/" title="" target="_blank">前台</a></p>
                <p class="userbtn">
                    <a href="#" title="">注销</a></p>
            </div>
            <div class="notifications">
                <p class="notifycount">
                    <a href="" title="" class="notifypop">10</a></p>
                <p>
                    <a href="" title="" class="notifypop">常用操作</a></p>
                <p class="smltxt">
                    (点击打开常用操作)</p>
            </div>
            <ul id="nav">
                <li>
                    <ul class="navigation">
                        <li class="heading selected" id="currentSection">首页</li>
                    </ul>
                </li>
                <li><a class="expanded heading">工程管理</a>
                    <ul class="navigation">
                        <li><a href="ProjectList.aspx" title="" onclick="setCurrent(this)" target="maincontent">
                            所有工程</a></li>
                        <li><a href="AddProject.aspx" title="" onclick="setCurrent(this)" target="maincontent">
                            新增工程</a></li>
                            <li><a href="UploadSource.aspx" title="" onclick="setCurrent(this)" target="maincontent">
                            上传源码</a></li>
                    </ul>
                </li>
                <li><a class="collapsed heading">用户管理</a>
                    <ul class="navigation">
                        <li><a href="UserList.aspx" onclick="setCurrent(this)" target="maincontent">用户列表</a></li>
                        <li><a href="AddUser.aspx" onclick="setCurrent(this)" target="maincontent">新增用户</a></li>
                    </ul>
                </li>
                <li><a class="collapsed heading">注释管理</a>
                    <ul class="navigation">
                        <li><a href="NoteList.aspx" onclick="setCurrent(this)" target="maincontent">注释列表</a></li>
                    </ul>
                </li>
                    <li><a class="collapsed heading">评论管理</a>
                    <ul class="navigation">
                        <li><a href="CommentList.aspx" target="maincontent" title="首页" onclick="setCurrent(this)">
                            评论列表</a></li>
                            </ul>
                </li>
                <li><a class="collapsed heading">其他</a>
                    <ul class="navigation">
                        <li><a href="Enviroment.aspx" target="maincontent" title="首页" onclick="setCurrent(this)">
                            运行环境</a></li>
                        <li><a href="Counter.aspx" target="maincontent" title="首页" onclick="setCurrent(this)">
                            统计信息</a></li>
                        <li><a href="CopyRight.aspx" target="maincontent" title="首页" 
                                onclick="setCurrent(this)">版权信息</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- 左边导航结束 -->
        <!-- 弹出通知 -->
        <div id="notificationsbox">
            <h4>
                Notifications</h4>
            <ul>
                <li><a href="#" title="">
                    <img src="img/icons/icon_square_close.png" alt="Close" class="closenot" /></a>
                    <h5>
                        <a href="#" title="">New member registration</a></h5>
                    <p>
                        Admin eve joined on 18.12.2010</p>
                </li>
                <li><a href="#" title="">
                    <img src="img/icons/icon_square_close.png" alt="Close" class="closenot" /></a>
                    <h5>
                        <a href="#" title="">New member registration</a></h5>
                    <p>
                        Jackson Michael joined on 16.12.2010</p>
                </li>
                <li><a href="#" title="">
                    <img src="img/icons/icon_square_close.png" alt="Close" class="closenot" /></a>
                    <h5>
                        <a href="#" title="">New blog post created</a></h5>
                    <p>
                        New post created on 15.12.2010</p>
                </li>
                <li><a href="#" title="">
                    <img src="img/icons/icon_square_close.png" alt="Close" class="closenot" /></a>
                    <h5>
                        <a href="#" title="">New group created</a></h5>
                    <p>
                        “Web Design” group created on 12.12.2010</p>
                </li>
                <li><a href="#" title="">
                    <img src="img/icons/icon_square_close.png" alt="Close" class="closenot" /></a>
                    <h5>
                        <a href="#" title="">1 new private message</a></h5>
                    <p>
                        New message from Joe sent on 21.11.2010</p>
                </li>
                <li><a href="#" title="">
                    <img src="img/icons/icon_square_close.png" alt="Close" class="closenot" /></a>
                    <h5>
                        <a href="#" title="">New member registration</a></h5>
                    <p>
                        Graham joined on 20.11.2010</p>
                </li>
            </ul>
            <p class="loadmore">
                <a href="#" title="">Load more notifications</a></p>
        </div>
        <!-- 弹出通知结束 -->
        <script type="text/javascript" src="scripts/enhance.js"></script>
        <script type='text/javascript' src='scripts/excanvas.js'></script>
        <script type='text/javascript' src='scripts/jquery.min.js'></script>
        <script type='text/javascript' src='scripts/jquery-ui.min.js'></script>
        <script type='text/javascript' src='scripts/jquery.wysiwyg.js'></script>
        <script type='text/javascript' src='scripts/visualize.jQuery.js'></script>
        <script type="text/javascript" src='scripts/functions.js'></script>
        <!--[if IE 6]>
    <script type='text/javascript' src='scripts/png_fix.js'></script>
    <script type='text/javascript'>
      DD_belatedPNG.fix('img, .notifycount, .selected');
    </script>
    <![endif]-->
    </div>
    </form>
</body>
</html>
