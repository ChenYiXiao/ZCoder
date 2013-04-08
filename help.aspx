<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_help.master" AutoEventWireup="true" CodeFile="help.aspx.cs" Inherits="help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <style>

@font-face
	{font-family:黑体;
	panose-1:2 1 6 9 6 1 1 1 1 1;
	mso-font-alt:SimHei;
	mso-font-charset:134;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:-2147482945 953122042 22 0 262145 0;}
@font-face
	{font-family:"\@宋体";
	panose-1:2 1 6 0 3 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:3 680460288 22 0 262145 0;}
@font-face
	{font-family:"\@黑体";
	panose-1:2 1 6 9 6 1 1 1 1 1;
	mso-font-charset:134;
	mso-generic-font-family:modern;
	mso-font-pitch:fixed;
	mso-font-signature:-2147482945 953122042 22 0 262145 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-parent:"";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
h1
	{mso-style-next:正文;
	margin-top:17.0pt;
	margin-right:0cm;
	margin-bottom:16.5pt;
	margin-left:0cm;
	text-align:justify;
	text-justify:inter-ideograph;
	line-height:240%;
	mso-pagination:lines-together;
	page-break-after:avoid;
	mso-outline-level:1;
	font-size:22.0pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Times New Roman";
	mso-font-kerning:22.0pt;
	mso-bidi-font-weight:normal;}
p.MsoToc1, li.MsoToc1, div.MsoToc1
	{mso-style-next:正文;
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
p.MsoToc2, li.MsoToc2, div.MsoToc2
	{mso-style-next:正文;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:21.0pt;
	margin-bottom:.0001pt;
	mso-para-margin-top:0cm;
	mso-para-margin-right:0cm;
	mso-para-margin-bottom:0cm;
	mso-para-margin-left:2.0gd;
	mso-para-margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
p.MsoToc3, li.MsoToc3, div.MsoToc3
	{mso-style-next:正文;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:42.0pt;
	margin-bottom:.0001pt;
	mso-para-margin-top:0cm;
	mso-para-margin-right:0cm;
	mso-para-margin-bottom:0cm;
	mso-para-margin-left:4.0gd;
	mso-para-margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
p.MsoToc4, li.MsoToc4, div.MsoToc4
	{mso-style-next:正文;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:63.0pt;
	margin-bottom:.0001pt;
	mso-para-margin-top:0cm;
	mso-para-margin-right:0cm;
	mso-para-margin-bottom:0cm;
	mso-para-margin-left:6.0gd;
	mso-para-margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
p.MsoToc5, li.MsoToc5, div.MsoToc5
	{mso-style-next:正文;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:84.0pt;
	margin-bottom:.0001pt;
	mso-para-margin-top:0cm;
	mso-para-margin-right:0cm;
	mso-para-margin-bottom:0cm;
	mso-para-margin-left:8.0gd;
	mso-para-margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
p.MsoToc6, li.MsoToc6, div.MsoToc6
	{mso-style-next:正文;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:105.0pt;
	margin-bottom:.0001pt;
	mso-para-margin-top:0cm;
	mso-para-margin-right:0cm;
	mso-para-margin-bottom:0cm;
	mso-para-margin-left:10.0gd;
	mso-para-margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
p.MsoToc7, li.MsoToc7, div.MsoToc7
	{mso-style-next:正文;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:126.0pt;
	margin-bottom:.0001pt;
	mso-para-margin-top:0cm;
	mso-para-margin-right:0cm;
	mso-para-margin-bottom:0cm;
	mso-para-margin-left:12.0gd;
	mso-para-margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
p.MsoToc8, li.MsoToc8, div.MsoToc8
	{mso-style-next:正文;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:147.0pt;
	margin-bottom:.0001pt;
	mso-para-margin-top:0cm;
	mso-para-margin-right:0cm;
	mso-para-margin-bottom:0cm;
	mso-para-margin-left:14.0gd;
	mso-para-margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
p.MsoToc9, li.MsoToc9, div.MsoToc9
	{mso-style-next:正文;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:168.0pt;
	margin-bottom:.0001pt;
	mso-para-margin-top:0cm;
	mso-para-margin-right:0cm;
	mso-para-margin-bottom:0cm;
	mso-para-margin-left:16.0gd;
	mso-para-margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	font-size:10.5pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
p.MsoHeader, li.MsoHeader, div.MsoHeader
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	mso-pagination:none;
	tab-stops:center 207.65pt right 415.3pt;
	layout-grid-mode:char;
	border:none;
	mso-border-alt:none windowtext 0cm;
	padding:0cm;
	mso-padding-alt:1.0pt 4.0pt 1.0pt 4.0pt;
	font-size:9.0pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
p.MsoFooter, li.MsoFooter, div.MsoFooter
	{margin:0cm;
	margin-bottom:.0001pt;
	mso-pagination:none;
	tab-stops:center 207.65pt right 415.3pt;
	layout-grid-mode:char;
	font-size:9.0pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
p.p0, li.p0, div.p0
	{mso-style-name:p0;
	margin:0cm;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	mso-bidi-font-size:10.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:宋体;
	mso-font-kerning:1.0pt;}
span.SpellE
	{mso-style-name:"";
	mso-spl-e:yes;}
 /* Page Definitions */
 @page
	{mso-page-border-surround-header:no;
	mso-page-border-surround-footer:no;}
@page Section1
	{size:595.3pt 841.9pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;
	mso-header-margin:42.55pt;
	mso-footer-margin:49.6pt;
	mso-paper-source:0;
	layout-grid:15.6pt;}
div.Section1
	{page:Section1;}
 /* List Definitions */
 @list l0
	{mso-list-id:0;
	mso-list-type:simple;
	mso-list-template-ids:0;}
@list l0:level1
	{mso-level-start-at:2;
	mso-level-suffix:none;
	mso-level-text:（%1）;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:0cm;
	text-indent:0cm;}
@list l1
	{mso-list-id:3;
	mso-list-type:simple;
	mso-list-template-ids:3;}
@list l1:level1
	{mso-level-suffix:none;
	mso-level-text:（%1）;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:0cm;
	text-indent:0cm;}
@list l2
	{mso-list-id:7;
	mso-list-type:simple;
	mso-list-template-ids:7;}
@list l2:level1
	{mso-level-start-at:2;
	mso-level-suffix:none;
	mso-level-text:（%1）;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:0cm;
	text-indent:0cm;}
@list l3
	{mso-list-id:10;
	mso-list-type:simple;
	mso-list-template-ids:10;}
@list l3:level1
	{mso-level-start-at:5;
	mso-level-suffix:none;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:0cm;
	text-indent:0cm;}
@list l4
	{mso-list-id:14;
	mso-list-type:simple;
	mso-list-template-ids:14;}
@list l4:level1
	{mso-level-start-at:4;
	mso-level-suffix:none;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:0cm;
	text-indent:0cm;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
-->
</style>



<div class=Section1 style='layout-grid:15.6pt'>

<p class=MsoNormal><span lang=EN-US
style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体'><a
href="#_Toc351616997"><span lang=EN-US style='color:windowtext;text-decoration:
none;text-underline:none'><span lang=EN-US><U> 系统概述</U> <span style='mso-tab-count:1'> </span></span></span></a><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:14.0pt;font-family:宋体;
mso-bidi-font-family:宋体'><a href="#_Toc351616998"><span lang=EN-US
style='color:windowtext;text-decoration:none;text-underline:none'><span
lang=EN-US>（<U> 一）系统功能概述</U><span style='mso-tab-count:1'>&nbsp;&nbsp; </span></span></span></a><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:14.0pt;font-family:宋体;
mso-bidi-font-family:宋体'><a href="#_Toc351616999"><span lang=EN-US
style='color:windowtext;text-decoration:none;text-underline:none'><span
lang=EN-US><U> （二）系统运行环境</U></span></span></a><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:14.0pt;font-family:宋体;
mso-bidi-font-family:宋体'><a href="#_Toc351617000"><span lang=EN-US
style='color:windowtext;text-decoration:none;text-underline:none'><span
lang=EN-US><U> 系统使用过程</U><span style='mso-tab-count:1'>&nbsp;&nbsp; </span></span></span></a><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:14.0pt;font-family:宋体;
mso-bidi-font-family:宋体'><a href="#_Toc351617001"><span style='color:windowtext;
text-decoration:none;text-underline:none'>1.</span><span lang=EN-US
style='color:windowtext;text-decoration:none;text-underline:none'><span
lang=EN-US><U> 用户注册</U><span style='mso-tab-count:1'>&nbsp; </span></span></span></a><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:14.0pt;font-family:宋体;
mso-bidi-font-family:宋体'><a href="#_Toc351617002"><span style='color:windowtext;
text-decoration:none;text-underline:none'>2.</span><span lang=EN-US
style='color:windowtext;text-decoration:none;text-underline:none'><span
lang=EN-US><U> 用户登录</U><span style='mso-tab-count:1'>&nbsp; </span></span></span></a><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:14.0pt;font-family:宋体;
mso-bidi-font-family:宋体'><a href="#_Toc351617003"><span style='color:windowtext;
text-decoration:none;text-underline:none'>3.</span><span lang=EN-US
style='color:windowtext;text-decoration:none;text-underline:none'><span
lang=EN-US><U> 用户注销</U><span style='mso-tab-count:1'>&nbsp; </span></span></span></a><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:14.0pt;font-family:宋体;
mso-bidi-font-family:宋体'><a href="#_Toc351617004"><span style='color:windowtext;
text-decoration:none;text-underline:none'>4. </span><span lang=EN-US
style='color:windowtext;text-decoration:none;text-underline:none'><span
lang=EN-US><U> 用户修改个人资料</U><span style='mso-tab-count:1'>&nbsp; </span></span></span></a><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:14.0pt;font-family:宋体;
mso-bidi-font-family:宋体'><a href="#_Toc351617005"><span style='color:windowtext;
text-decoration:none;text-underline:none'>5. </span><span lang=EN-US
style='color:windowtext;text-decoration:none;text-underline:none'><span
lang=EN-US><U> 用户修改个人密码</U><span style='mso-tab-count:1'>&nbsp; </span></span></span></a><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:14.0pt;font-family:宋体;
mso-bidi-font-family:宋体'><a href="#_Toc351617006"><span lang=EN-US
style='color:windowtext;text-decoration:none;text-underline:none'><span
lang=EN-US><U> 源码模块使用</U><span style='mso-tab-count:1'>&nbsp;&nbsp; </span></span></span></a><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:14.0pt;font-family:宋体;
mso-bidi-font-family:宋体'><a href="#_Toc351617007"><span style='color:windowtext;
text-decoration:none;text-underline:none'>1.</span><span lang=EN-US
style='color:windowtext;text-decoration:none;text-underline:none'><span
lang=EN-US><U> 源代码阅读</U><span style='mso-tab-count:1'>&nbsp;&nbsp; </span></span></span></a><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:14.0pt;font-family:宋体;
mso-bidi-font-family:宋体'><a href="#_Toc351617008"><span style='color:windowtext;
text-decoration:none;text-underline:none'>2.</span><span lang=EN-US
style='color:windowtext;text-decoration:none;text-underline:none'><span
lang=EN-US><U> 源代码注释</U><span style='mso-tab-count:1'>&nbsp;&nbsp; </span></span></span></a><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:14.0pt;font-family:宋体;
mso-bidi-font-family:宋体'><a href="#_Toc351617009"><span lang=EN-US
style='color:windowtext;text-decoration:none;text-underline:none'><span
lang=EN-US><U> 注释模块使用</U><span style='mso-tab-count:1'>&nbsp;&nbsp; </span></span></span></a><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:14.0pt;font-family:宋体;
mso-bidi-font-family:宋体'><a href="#_Toc351617010"><span style='color:windowtext;
text-decoration:none;text-underline:none'>1.</span><span lang=EN-US
style='color:windowtext;text-decoration:none;text-underline:none'><span
lang=EN-US><U> 首页显示最<span lang=EN-US>新<span lang=EN-US>注释</U><span style='mso-tab-count:
1'>&nbsp; </span></span></span></span></span></a><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:14.0pt;font-family:宋体;
mso-bidi-font-family:宋体'><a href="#_Toc351617011"><span lang=EN-US
style='color:windowtext;text-decoration:none;text-underline:none'><span
lang=EN-US><U> 评价模块</U> <span style='mso-tab-count:1'> </span></span></span></a><o:p></o:p></span></p>

<p class=MsoNormal><span
lang=EN-US style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体'><o:p>&nbsp;</o:p></span></p>

<span lang=EN-US style='font-size:14.0pt;font-family:"Times New Roman";
mso-fareast-font-family:宋体;mso-font-kerning:1.0pt;mso-ansi-language:EN-US;
mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA'><br clear=all
style='mso-special-character:line-break;page-break-before:always'>
</span>

<p class=MsoNormal style='mso-outline-level:1'><span lang=EN-US
style='font-size:14.0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='mso-outline-level:1'><a name="_Toc351616997"><span
style='font-size:26.0pt;font-family:黑体;mso-bidi-font-family:黑体'>系统概述</span></a><span
lang=EN-US style='font-size:26.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span></p>

<p class=MsoNormal style='mso-outline-level:2'><a name="_Toc351616998"><span
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'>（一）系统功能概述：</span></a><span
lang=EN-US style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span></p>

<p class=MsoNormal><span style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:
宋体'>本系统的主要功能是方便用户互相交流源码和心得，用户可以上传源码工程到系统，</span></p>
<p class=MsoNormal><span style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:
宋体'>其他用户可以通过本系统阅读其中代码，并进行注释。<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='mso-outline-level:2'><a name="_Toc351616999"><span
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'>（二）系统运行环境：</span></a><span
lang=EN-US style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:14.0pt;font-family:宋体;
mso-bidi-font-family:宋体'>Window</span><span style='font-size:14.0pt;font-family:
宋体;mso-bidi-font-family:宋体'>操作系统，<span lang=EN-US>IIS6</span>以上，<span
lang=EN-US>.Net <span class=SpellE>Framwork</span> 4.0</span>，<span
class=SpellE><span lang=EN-US>Sql</span></span><span lang=EN-US> Server2005<o:p></o:p></span></span></p>

<p class=MsoNormal style='mso-outline-level:3'><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='mso-outline-level:1'><a name="_Toc351617000"><span
style='font-size:26.0pt;font-family:黑体;mso-bidi-font-family:黑体'>系统使用过程</span></a><span
lang=EN-US style='font-size:26.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span></p>

<p class=MsoNormal style='mso-outline-level:3'><a name="_Toc351617001"><span
lang=EN-US style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'>1.</span></a><span
style='mso-bookmark:_Toc351617001'><span style='font-size:16.0pt;font-family:
黑体;mso-bidi-font-family:黑体'>用户注册</span></span><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span></p>

<p class=MsoNormal align=left style='text-align:left'><span style='font-size:
14.0pt;font-family:宋体;mso-bidi-font-family:宋体'>点击系统右上方的注册链接<span lang=EN-US><![if !vml]><img border=0 width=102 height=42
src="images\help/image001.jpg" v:shapes="_x0000_i1025"><![endif]></span>，系统会跳转到下界面<span
lang=EN-US>,</span>如图所示：<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
  <o:p></o:p></span></span></p>
<p class=MsoNormal align=left style='text-align:left'><span style="font-family: &quot;宋体&quot;; font-size: 14.0pt"> </span><b><span style='font-size:14.0pt;
font-family:宋体;mso-bidi-font-family:宋体'><span lang=EN-US>
  <o:p></o:p>
  <img src="images\help/image002.jpg" width="329" height="466"></span></span></b><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><![if !vml]><![endif]>
<o:p></o:p>
</span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:16.0pt;font-family:黑体;
mso-bidi-font-family:黑体'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><span style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:
宋体'>然后逐个填写相关信息，点击提交注册，即可。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='mso-outline-level:3'><a name="_Toc351617002"><span
lang=EN-US style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'>2.</span></a><span
style='mso-bookmark:_Toc351617002'><span style='font-size:16.0pt;font-family:
黑体;mso-bidi-font-family:黑体'>用户登录</span></span><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span></p>

<p class=MsoNormal><span style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:
宋体'>用户登录可通过两种方式：<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-left:0cm;text-indent:0cm;mso-outline-level:
4;mso-list:l1 level1 lfo1'><![if !supportLists]><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><span
style='mso-list:Ignore'>（1）</span></span><![endif]><span style='font-size:16.0pt;
font-family:黑体;mso-bidi-font-family:黑体'>快捷登录<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=left style='text-align:left'><span style='font-size:
14.0pt;font-family:宋体;mso-bidi-font-family:宋体'>如图二所示<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=center style='text-align:center'>&nbsp;</p>
<p class=MsoNormal align=center style='text-align:center'>&nbsp;</p>
<p class=MsoNormal align=center style='text-align:center'>&nbsp;</p>
<p class=MsoNormal align=center style='text-align:left'><span
style='font-size:14.0pt;font-family:黑体;mso-bidi-font-family:黑体'>图二 快捷登录入口<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=center style='text-align:left'><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><![if !vml]><img border=0 width=271 height=197
src="images\help/image003.jpg" v:shapes="_x0000_i1027"><![endif]><o:p></o:p></span></p>

<p class=MsoNormal><span style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:
宋体'>填写信息然后点击登陆即可进行登陆。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-left:0cm;text-indent:0cm;mso-outline-level:
4;mso-list:l1 level1 lfo1'><![if !supportLists]><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><span
style='mso-list:Ignore'>（2）</span></span><![endif]><span style='font-size:16.0pt;
font-family:黑体;mso-bidi-font-family:黑体'>点击系统右上方的登陆链接<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:
宋体'>图示<span lang=EN-US><![if !vml]><img border=0 width=81 height=28
src="images\help/image004.jpg" v:shapes="_x0000_i1028"><![endif]></span>，系统跳转到以下登录界面，填写信息进行登陆。如图三所示<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=center style='text-align:left'><span
style='font-size:14.0pt;font-family:黑体;mso-bidi-font-family:黑体'><span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=center style='text-align:left'><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><![if !vml]><img border=0 width=261 height=176
src="images\help/image005.jpg" v:shapes="_x0000_i1029"><![endif]><o:p></o:p></span></p>

<p class=MsoNormal><span style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:
宋体'>登录后界面，如图四所示<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=center style='text-align:left'>&nbsp;</p>

<p class=MsoNormal align=center style='text-align:left'><span lang=EN-US><![if !vml]><img
src="images\help/image007.gif" width=553 height=162 border=0 align="texttop" v:shapes="_x0000_i1030"><![endif]></span><span
lang=EN-US style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span></p>
<p class=MsoNormal style='mso-outline-level:3'>&nbsp;</p>
<p class=MsoNormal style='mso-outline-level:3'><a name="_Toc351617003"><span
lang=EN-US style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'>3.</span></a><span
style='mso-bookmark:_Toc351617003'><span style='font-size:16.0pt;font-family:
黑体;mso-bidi-font-family:黑体'>用户注销</span></span><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span></p>

<p class=MsoNormal><span style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:
宋体'>登陆后界面右上方有注销链接，点击链接即可注销账号，图示：<span lang=EN-US><![if !vml]><img border=0 width=79 height=32
src="images\help/image009.gif" v:shapes="_x0000_i1031"><![endif]><o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-left:0cm;text-indent:0cm;mso-outline-level:
3;mso-list:l4 level1 lfo2'><a name="_Toc351617004"><![if !supportLists]><span
lang=EN-US style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><span
style='mso-list:Ignore'>4.</span></span><![endif]><span style='font-size:16.0pt;
font-family:黑体;mso-bidi-font-family:黑体'>用户修改个人资料</span></a><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span></p>

<p class=MsoNormal>&nbsp;</p>
<p class=MsoNormal><span style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:
宋体'>登陆后界面右上方有用户名链接链接，<span lang=EN-US><![if !vml]><img border=0 width=79 height=32
src="images\help/image009.gif" v:shapes="_x0000_i1032"><![endif]></span>，点击链接显示修改用户信息界面，图示：<span
lang=EN-US><o:p></o:p></span></span></p>
<p class=MsoNormal>&nbsp;</p>
<p class=MsoNormal>&nbsp;</p>

<p class=MsoNormal><span lang=EN-US style='font-size:14.0pt;font-family:宋体;
mso-bidi-font-family:宋体'><![if !vml]><img
src="images\help/image010.jpg" width=516 height=367 border=0 align="middle" v:shapes="_x0000_i1033"><![endif]></span><span
style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体'>，<span
lang=EN-US><o:p></o:p></span></span></p>
<p class=MsoNormal>&nbsp;</p>
<p class=MsoNormal>&nbsp;</p>

<p class=MsoNormal><span style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:
宋体'>按所需修改个人信息，点击修改按钮即可。<span lang=EN-US><o:p></o:p></span></span></p>
<p class=MsoNormal>&nbsp;</p>

<p class=MsoNormal style='margin-left:0cm;text-indent:0cm;mso-outline-level:
3;mso-list:l4 level1 lfo2'><a name="_Toc351617005"><![if !supportLists]><span
lang=EN-US style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><span
style='mso-list:Ignore'>5.</span></span><![endif]><span style='font-size:16.0pt;
font-family:黑体;mso-bidi-font-family:黑体'>用户修改个人密码</span></a><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span></p>

<p class=MsoNormal><span style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:
宋体'>点击图中修改密码链接</span><span lang=EN-US><![if !vml]><img border=0 width=268 height=113
src="images\help/image012.gif" v:shapes="_x0000_i1034"><![endif]></span><span
style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体'>，</span></p>
<p class=MsoNormal><span
style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体'>进入以下界面，图示：然</span><span
style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体'>后填写新密码即可，点击修改按钮，修改成功。<span
lang=EN-US>
  <o:p></o:p>
</span></span></p>

<p class=MsoNormal><span lang=EN-US><![if !vml]><img border=0 width=553 height=224
src="images\help/image014.gif" v:shapes="_x0000_i1035"><![endif]></span><span
lang=EN-US style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span></p>

<p class=MsoNormal style='mso-outline-level:2'><a name="_Toc351617006"><span
style='font-size:22.0pt;font-family:黑体;mso-bidi-font-family:黑体'>源码模块使用</span></a><span
lang=EN-US style='font-size:22.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span></p>

<p class=MsoNormal style='mso-outline-level:3'><a name="_Toc351617007"><span
lang=EN-US style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'>1.</span></a><span
style='mso-bookmark:_Toc351617007'><span style='font-size:16.0pt;font-family:
黑体;mso-bidi-font-family:黑体'>源代码阅读</span></span><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span></p>

<p class=MsoNormal><span style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:
宋体'>首页显示最新工程，点击其中一个工程，如图五所示<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=center style='text-align:left'><span
style='font-size:14.0pt;font-family:黑体;mso-bidi-font-family:黑体'>图五<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=center style='text-align:left'><span
style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体'>、，</span><span
lang=EN-US style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><![if !vml]><img border=0 width=338 height=156
src="images\help/image016.jpg" v:shapes="_x0000_i1036"><![endif]><o:p></o:p></span></p>

<p class=MsoNormal align=center style='text-align:center'>&nbsp;</p>
<p class=MsoNormal align=center style='text-align:left'><span
style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体'>然后工程会按目录展开，例：点击<span
class=SpellE><span lang=EN-US style='color:blue'>Zcode</span></span><span
style='color:blue'>第二次</span>工程，如图六显</span></p>
<p class=MsoNormal align=center style='text-align:left'>&nbsp;</p>
<p class=MsoNormal align=center style='text-align:left'><span lang=EN-US style='font-size:
16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><![if !vml]><![endif]></span><span
lang=EN-US style='font-size:14.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span><img src="images\help/image017.jpg" width="255" height="499"></p>

<p class=MsoNormal align=center style='text-align:left'><span
style='font-size:14.0pt;font-family:黑体;mso-bidi-font-family:黑体'>图六<span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span>项目目录</span><span
lang=EN-US style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span></p>

<p class=MsoNormal align=center style='text-align:left'><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p>&nbsp;</o:p></span><span
style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体'>点击其中一个文件，可在页面右侧显示具体代码，点击<span
class=SpellE><span lang=EN-US>BigLogin.ascx.cs</span></span>文件，结果如图七所示<span
lang=EN-US>
  <o:p></o:p>
</span></span></p>

<p class=MsoNormal align=center style='text-align:left'><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><![if !vml]><img border=0 width=553 height=432
src="images\help/image020.jpg" v:shapes="_x0000_i1038"><![endif]><o:p></o:p></span></p>

<p class=MsoNormal align=center style='text-align:left'><span
style='font-size:14.0pt;font-family:黑体;mso-bidi-font-family:黑体'>图七 源代码显示页面<span
lang=EN-US><o:p></o:p></span></span></p>
<p class=MsoNormal align=center style='text-align:center'>&nbsp;</p>
<p class=MsoNormal align=center style='text-align:center'>&nbsp;</p>

<p class=MsoNormal><span style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:
宋体'>通过该界面可对源码进行阅读。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal><span lang=EN-US style='font-size:16.0pt;font-family:黑体;
mso-bidi-font-family:黑体'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='mso-outline-level:3'><a name="_Toc351617008"><span
lang=EN-US style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'>2.</span></a><span
style='mso-bookmark:_Toc351617008'><span style='font-size:16.0pt;font-family:
黑体;mso-bidi-font-family:黑体'>源代码注释</span></span><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span></p>

<p class=MsoNormal><span style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:
宋体'>点击代码左侧行号，系统弹出注释框，如图八所示，在框内填写注释即可。<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=center style='text-align:left'><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><![if !vml]><img border=0 width=335 height=269
src="images\help/image021.jpg" v:shapes="_x0000_i1039"><![endif]></span><span
lang=EN-US style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:宋体'><o:p></o:p></span></p>

<p class=MsoNormal align=center style='text-align:left'><span
style='font-size:14.0pt;font-family:黑体;mso-bidi-font-family:黑体'>图八 注释填写框<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='mso-outline-level:2'><a name="_Toc351617009"><span
style='font-size:22.0pt;font-family:黑体;mso-bidi-font-family:黑体'>注释模块使用</span></a><span
lang=EN-US style='font-size:22.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span></p>

<p class=MsoNormal style='mso-outline-level:3'><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'>1.</span><span
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'>注释查看，如图九所示<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=center style='text-align:left'><span
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'>图九 最新注释显示页面<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=center style='text-align:left'><span lang=EN-US
style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'><![if !vml]><img border=0 width=295 height=79
src="images\help/image023.gif" v:shapes="_x0000_i1040"><![endif]><o:p></o:p></span></p>
<p class=MsoNormal align=center style='text-align:center'>&nbsp;</p>

<p class=MsoNormal style='mso-outline-level:3'><a name="_Toc351617010"><span
lang=EN-US style='font-size:16.0pt;font-family:黑体;mso-bidi-font-family:黑体'>2.</span></a><span
style='mso-bookmark:_Toc351617010'><span style='font-size:16.0pt;font-family:
黑体;mso-bidi-font-family:黑体'>首页显示最新注释</span></span></p>

<p class=MsoNormal align=left style='text-align:left'><span style='font-size:
14.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>点击“最新注释”如图：</span><span lang=EN-US style='font-size:14.0pt'><![if !vml]><img border=0 width=334 height=66
src="images\help/image024.jpg" v:shapes="_x0000_i1041"><![endif]></span><span
style='font-size:14.0pt;font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman"'>可查看最新添加的注释的列表。</span></p>
<p class=MsoNormal align=left style='text-align:left'><span lang=EN-US
style='font-size:14.0pt'><![if !vml]><img border=0 width=554 height=493
src="images\help/image026.jpg" v:shapes="_x0000_i1042"><![endif]><o:p></o:p></span></p>
<p class=MsoNormal align=left style='text-align:left'>&nbsp;</p>

<p class=MsoNormal style='mso-outline-level:2'><a name="_Toc351617011"><span
style='font-size:22.0pt;font-family:黑体;mso-bidi-font-family:黑体'>评价模块</span></a><span
lang=EN-US style='font-size:22.0pt;font-family:黑体;mso-bidi-font-family:黑体'><o:p></o:p></span></p>

<p class=MsoNormal><span style='font-size:14.0pt;font-family:宋体;mso-bidi-font-family:
宋体'>（功能没实现，所以没写）<span lang=EN-US><o:p></o:p></span></span></p>

</asp:Content>

