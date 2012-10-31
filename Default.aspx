<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="BigLogin.ascx" TagName="BigLogin" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/Tabs.css" rel="stylesheet" type="text/css" />
    <script src="js/tabs.js" type="text/javascript"></script>
    <script src="js/jquery1.3.2.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div class="zleft" style="width: 670px; height: 500px">
        <div class="tab">
	<div class="tab_menu">
		<ul>
			<li class="selected">最新注释</li>
			<li>最新工程</li>
			<li>最新评论</li>
		</ul>
	</div>
	<div class="tab_box"> 
		 <div>最新注释</div>
		 <div class="hide">最新</div>
		 <div class="hide">最新</div>
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
