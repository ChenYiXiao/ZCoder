<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Viewer.aspx.cs" Inherits="Viewer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <script type="text/javascript" src="scripts/shCore.js"></script>
    <script type="text/javascript" src="scripts/<%=le.BrushFile %>"></script>
    <link type="text/css" rel="stylesheet" href="styles/shCoreDefault.css" />
    <script type="text/javascript">        SyntaxHighlighter.all();</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 <%=Pre %>
</asp:Content>
