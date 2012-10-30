<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="BigLogin.ascx" TagName="BigLogin" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/Tabs.css" rel="stylesheet" type="text/css" />
    <script src="js/tabs.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div class="zleft" style="width: 670px; height: 500px">
            <div id="tabs1">
                 <div class="menu2box">
                        <div id="tip2">
                        </div>
                        <ul id="menu2">
                            <li class="tTab" onmouseover="nowtab(2,0)" id="main"><a href="#">新闻</a></li>
                            <li onmouseover="nowtab(2,1)" class="tTab"><a href="#">评论</a></li>
                            <li onmouseover="nowtab(2,2)" class="tTab"><a href="#">技术</a></li>
                            <li onmouseover="nowtab(2,3)" class="tTab"><a href="#">点评</a></li>
                        </ul>
                    </div>
                <div id="tabs2">
                   
                    <div class="main" id="projects">
                        新闻内容
                    </div>
                    <div id="news" style="visibility:hidden">ancdwadwda</div>
                </div>
            </div>
            </div>
            <div class="zleft" style="width: 240px; margin-left: 20px; padding: 15px">
                <uc1:BigLogin ID="BigLogin1" runat="server" />
            </div>
            <div style="clear: both">
            </div>
        </div>
</asp:Content>
