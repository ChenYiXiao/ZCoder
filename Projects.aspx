<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Project.master" AutoEventWireup="true"
    CodeFile="Projects.aspx.cs" Inherits="U_P_List" %>


<%@ Register Src="ascx/LatestProjects.ascx" TagName="LatestProjects" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="zBorderPanel" style="background-color: #FFFFFF">
    <span class="zTitle">现有工程</span>
    <br />
    本站所有工程均由管理员上传。如需上传您的工程，请联系管理员。<br />
    如果本站的工程侵犯了您的版权，请联系管理员。<br />
    如果您觉得本站的工程存在某些问题，请联系管理员。<br />
    欢迎对现有工程进行评价。</div>
    <div class="zBorderPanel" style="padding: 20px">
        <uc1:LatestProjects ID="LatestProjects1" runat="server" />
    </div>
</asp:Content>
