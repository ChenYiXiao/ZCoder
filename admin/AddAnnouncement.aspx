<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="AddAnnouncement.aspx.cs" Inherits="admin_AddAnnouncement" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" Runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Text="公告标题："></asp:Label>
    <br />
    <asp:TextBox ID="tb_amtitle" runat="server" CssClass="inputbox"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="公告正文："></asp:Label>
    <br />
    <asp:TextBox ID="tb_essay" runat="server" Height="75px" TextMode="MultiLine" 
        Width="248px" CssClass="inputbox"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="tb_submit" runat="server" CssClass="searchbtn" Text="提交" 
        onclick="tb_submit_Click" />
    &nbsp;&nbsp;
    <br />
    <br />
</asp:Content>

