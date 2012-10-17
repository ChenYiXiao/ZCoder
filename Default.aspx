<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="BigLogin.ascx" tagname="BigLogin" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<div class="zleft" style="width:670px; height:500px"></div>
<div class="zleft" style="width:240px; margin-left:20px; padding:15px">
    <uc1:BigLogin ID="BigLogin1" runat="server" />
        </div>
<div style="clear:both"></div>
</div>
</asp:Content>

