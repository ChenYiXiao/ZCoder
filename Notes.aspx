<%@ Page Language="C#" MasterPageFile="~/MasterPage_Project.master" AutoEventWireup="true" CodeFile="Notes.aspx.cs" Inherits="Notes"   Inherits="U_P_List" %>

<%@ Register Src="ascx/LatestNote.ascx" TagName="LatestNote" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="zBorderPanel" style="background-color: #FFFFFF">
    <span class="zTitle">最新注释</span>
   </div>
    <div class="zBorderPanel" style="padding: 20px">
        <uc1:LatestNote ID="LatestNote1" runat="server" />
    </div>
</asp:Content>
