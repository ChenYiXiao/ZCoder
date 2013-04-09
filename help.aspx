<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_help.master" AutoEventWireup="true" CodeFile="help.aspx.cs" Inherits="help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style type="text/css">
        p.MsoNormal {
            color:#333;
        }
        U {
        color:#333;
        font-size:20px;
        }
        strong {
        color:#333;
        font-size:20px;
        }        
</style>
   
<p class="MsoNormal"><a href="#_Toc351616997"><U> 系统概述</U> </a></p>
<p class="MsoNormal"><a href="#_Toc351616998"><U> （一）系统功能概述</U></a></p>
<p class="MsoNormal"><a href="#_Toc351616999"><U> （二）系统运行环境</U></a></p>
<p class="MsoNormal"><a href="#_Toc351617000"><U> 系统使用过程</U></a></p>
<p class="MsoNormal"><a href="#_Toc351617001"><U> 1.用户注册</U></a></p>
<p class="MsoNormal"><a href="#_Toc351617002"><U> 2.用户登录</U></a></p>
<p class="MsoNormal"><a href="#_Toc351617003"><U> 3.用户注销</U></a></p>
<p class="MsoNormal"><a href="#_Toc351617004"> <U> 4.用户修改个人资料</U></a></p>
<p class="MsoNormal"><a href="#_Toc351617005"> <U>5. 用户修改个人密码</U></a></p>
<p class="MsoNormal"><a href="#_Toc351617006"><U> 源码模块使用</U></a></p>
<p class="MsoNormal"><a href="#_Toc351617007"><U> 1.源代码阅读</U></a></p>
<p class="MsoNormal"><a href="#_Toc351617008"><U> 2.源代码注释</U></a></p>
<p class="MsoNormal"><a href="#_Toc351617009"><U> 注释模块使用</U></a></p>
<p class="MsoNormal"><a href="#_Toc351617010"><U> 首页显示最新注释</U></a></p>
<p class="MsoNormal"><a href="#_Toc351617011"><U> 评价模块</U> </a></p>
  
<p class="MsoNormal">&nbsp;</p>
<p class="MsoNormal">&nbsp;</p>
<p class="MsoNormal"><a name="_Toc351616997"><p>&nbsp;</p><p>&nbsp;</p><strong>系统概述</strong></a></p>
<p class="MsoNormal"><a name="_Toc351616998"><p>&nbsp;</p><p>&nbsp;</p><strong>（一）系统功能概述：</strong></a></p>
<p class="MsoNormal"> 本系统的主要功能是方便用户互相交流源码和心得，用户可以上传源码工程到系统，</p>
<p class="MsoNormal">其他用户可以通过本系统阅读其中代码，并进行注释。</p>
<p class="MsoNormal"><a name="_Toc351616999"><p>&nbsp;</p><p>&nbsp;</p><strong>（二）系统运行环境：</strong></a></p>
<p class="MsoNormal">Windows操作系统，IIS6以上，.Net Framwork 4.0，Sql Server2005</p>
<p class="MsoNormal"></p>
<p class="MsoNormal"><a name="_Toc351617000"><p>&nbsp;</p><p>&nbsp;</p><strong>系统使用过程</strong></a> </p>
<p class="MsoNormal"><a name="_Toc351617001"><p>&nbsp;</p><p>&nbsp;</p><strong>1.用户注册</strong></p>
<p class="MsoNormal" align=left style='text-align:left'>点击系统右上方的注册链接<![if !vml]><img border=0 width=102 height=42 src="images\help/image001.jpg" v:shapes="_x0000_i1025"><![endif]>，系统会跳转到下界面,如图所示： </p>
<p class="MsoNormal" align=left style='text-align:left'><img src="images\help/image002.jpg" width="329" height="466"></b><![if !vml]><![endif]></p>
<p class="MsoNormal"></p>
<p class="MsoNormal">然后逐个填写相关信息，点击提交注册，即可。</p>
<p class="MsoNormal" ><a name="_Toc351617002"><p>&nbsp;</p><p>&nbsp;</p><strong>2.用户登录</strong></a></p>
<p class="MsoNormal">用户登录可通过两种方式：</p>
<p class="MsoNormal" style='margin-left:0cm;text-indent:0cm;mso-outline-level:
4;mso-list:l1 level1 lfo1'><![if !supportLists]>（1）<![endif]>快捷登录</p>
<p class="MsoNormal" align=left style='text-align:left'>如图二所示</p>
<p class="MsoNormal" align=center style='text-align:left'>图二 快捷登录入口</p>
<p class="MsoNormal" align=center style='text-align:left'><![if !vml]><img border=0 width=271 height=197
src="images\help/image003.jpg" v:shapes="_x0000_i1027"><![endif]></p>
<p class="MsoNormal">填写信息然后点击登陆即可进行登陆。</p>
<p class="MsoNormal" style='margin-left:0cm;text-indent:0cm;mso-outline-level:
4;mso-list:l1 level1 lfo1'><![if !supportLists]>（2）<![endif]>点击系统右上方的登陆链接</p>
<p class="MsoNormal">图示<![if !vml]><img border=0 width=81 height=28
src="images\help/image004.jpg" v:shapes="_x0000_i1028"><![endif]>，系统跳转到以下登录界面，填写信息进行登陆。如图三所示</p>
<p class="MsoNormal" align=center style='text-align:left'></p>
<p class="MsoNormal" align=center style='text-align:left'><![if !vml]><img border=0 width=261 height=176
src="images\help/image005.jpg" v:shapes="_x0000_i1029"><![endif]></p>
<p class="MsoNormal">登录后界面，如图四所示</p>
<p class="MsoNormal" align=center style='text-align:left'>&nbsp;</p>
<p class="MsoNormal" align=center style='text-align:left'><![if !vml]><img
src="images\help/image007.gif" width=553 height=162 border=0 align="texttop" v:shapes="_x0000_i1030"><![endif]></p>
<p class="MsoNormal" >&nbsp;</p>
<p class="MsoNormal" ><a name="_Toc351617003"><p>&nbsp;</p><p>&nbsp;</p><strong>3.用户注销</strong></a></p>
<p class="MsoNormal">登陆后界面右上方有注销链接，点击链接即可注销账号，图示：<![if !vml]><img border=0 width=79 height=32
src="images\help/image009.gif" v:shapes="_x0000_i1031"><![endif]></p>
<p class="MsoNormal" style='margin-left:0cm;text-indent:0cm;mso-outline-level:
3;mso-list:l4 level1 lfo2'><a name="_Toc351617004"><p>&nbsp;</p><p>&nbsp;</p><strong><![if !supportLists]>4.<![endif]>用户修改个人资料</strong></a></p>
<p class="MsoNormal">&nbsp;</p>
<p class="MsoNormal">登陆后界面右上方有用户名链接链接，<![if !vml]><img border=0 width=79 height=32
src="images\help/image009.gif" v:shapes="_x0000_i1032"><![endif]>，点击链接显示修改用户信息界面，图示：</p>
<p class="MsoNormal">&nbsp;</p>
<p class="MsoNormal">&nbsp;</p>
<p class="MsoNormal"><![if !vml]><img
src="images\help/image010.jpg" width=516 height=367 border=0 align="middle" v:shapes="_x0000_i1033"><![endif]>，</p>
<p class="MsoNormal">&nbsp;</p>
<p class="MsoNormal">&nbsp;</p>
<p class="MsoNormal">按所需修改个人信息，点击修改按钮即可。</p>
<p class="MsoNormal">&nbsp;</p>
<p class="MsoNormal" style='margin-left:0cm;text-indent:0cm;mso-outline-level:
3;mso-list:l4 level1 lfo2'><a name="_Toc351617005"><p>&nbsp;</p><p>&nbsp;</p><strong><![if !supportLists]>5.<![endif]>用户修改个人密码</strong></a></p>
<p class="MsoNormal">点击图中修改密码链接<![if !vml]><img border=0 width=268 height=113
src="images\help/image012.gif" v:shapes="_x0000_i1034"><![endif]>，</p>
<p class="MsoNormal">进入以下界面，图示：然后填写新密码即可，点击修改按钮，修改成功。</p>
<p class="MsoNormal"><![if !vml]><img border=0 width=553 height=224
src="images\help/image014.gif" v:shapes="_x0000_i1035"><![endif]></p>
<p class="MsoNormal"><a name="_Toc351617006"><p>&nbsp;</p><p>&nbsp;</p><strong>源码模块使用</strong></a></p>
<p class="MsoNormal"><a name="_Toc351617007"><p>&nbsp;</p><p>&nbsp;</p><strong>1.源代码阅读</strong></a></p>
<p class="MsoNormal">首页显示最新工程，点击其中一个工程，如图五所示</p>
<p class="MsoNormal" align=center style='text-align:left'>图五</p>
<p class="MsoNormal" align=center style='text-align:left'>、，<![if !vml]><img border=0 width=338 height=156
src="images\help/image016.jpg" v:shapes="_x0000_i1036"><![endif]></p>
<p class="MsoNormal" align=center style='text-align:center'>&nbsp;</p>
<p class="MsoNormal" align=center style='text-align:left'>然后工程会按目录展开，例：点击Zcode第二次工程，如图六显</p>
<p class="MsoNormal" align=center style='text-align:left'>&nbsp;</p>
<p class="MsoNormal" align=center style='text-align:left'><![if !vml]><![endif]><img src="images\help/image017.jpg" width="255" height="499"></p>
<p class="MsoNormal" align=center style='text-align:left'>图六&nbsp; 项目目录</p>
<p class="MsoNormal" align=center style='text-align:left'>点击其中一个文件，可在页面右侧显示具体代码，点击BigLogin.ascx.cs文件，结果如图七所示</p>
<p class="MsoNormal" align=center style='text-align:left'><![if !vml]><img border=0 width=553 height=432
src="images\help/image020.jpg" v:shapes="_x0000_i1038"><![endif]></p>
<p class="MsoNormal" align=center style='text-align:left'>图七 源代码显示页面</p>
<p class="MsoNormal">通过该界面可对源码进行阅读。</p>
<p class="MsoNormal">&nbsp;</p>
<p class="MsoNormal"><a name="_Toc351617008"><p>&nbsp;</p><p>&nbsp;</p><strong>2.源代码注释</strong></a></p>
<p class="MsoNormal">点击代码左侧行号，系统弹出注释框，如图八所示，在框内填写注释即可。</p>
<p class="MsoNormal" align=center style='text-align:left'><![if !vml]><img border=0 width=335 height=269
src="images\help/image021.jpg" v:shapes="_x0000_i1039"><![endif]></p>
<p class="MsoNormal" align=center style='text-align:left'>图八 注释填写框</p>
<p class="MsoNormal"><a name="_Toc351617009"><p>&nbsp;</p><p>&nbsp;</p><strong>注释模块使用</strong></a></p>
<p class="MsoNormal"><strong>1.注释查看，如图九所示</strong></p>
<p class="MsoNormal" align=center style='text-align:left'>图九 最新注释显示页面</p>
<p class="MsoNormal" align=center style='text-align:left'><![if !vml]><img border=0 width=295 height=79
src="images\help/image023.gif" v:shapes="_x0000_i1040"><![endif]></p>
<p class="MsoNormal" align=center style='text-align:center'>&nbsp;</p>
<p class="MsoNormal"><a name="_Toc351617010"><p>&nbsp;</p><p>&nbsp;</p><strong>2.首页显示最新注释</strong></a></p>
<p class="MsoNormal" align=left style='text-align:left'>点击“最新注释”如图：<![if !vml]><img border=0 width=334 height=66
src="images\help/image024.jpg" v:shapes="_x0000_i1041"><![endif]>可查看最新添加的注释的列表。</p>
<p class="MsoNormal" align=left style='text-align:left'><![if !vml]><img border=0 width=554 height=493
src="images\help/image026.jpg" v:shapes="_x0000_i1042"><![endif]></p>
<p class="MsoNormal" align=left style='text-align:left'>&nbsp;</p>
<p class="MsoNormal"><a name="_Toc351617011"><p>&nbsp;</p><p>&nbsp;</p><strong>评价模块</strong></a></p>
<p class="MsoNormal">（功能没实现，所以没写）</p>
</asp:Content>

