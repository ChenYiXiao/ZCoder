<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="AddAnnouncement.aspx.cs" Inherits="admin_AddAnnouncement" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="公告标题："></asp:Label>
    <asp:TextBox ID="tb_amtitle" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="公告正文："></asp:Label>
    <br />
    <asp:TextBox ID="tb_essay" runat="server" Height="75px" TextMode="MultiLine" 
        Width="248px"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="tb_submit" runat="server" CssClass="zbutton" Text="提交" 
        onclick="tb_submit_Click" />
    <asp:Button ID="tb_clear" runat="server" CssClass="zbutton" Text="清空" />
    <br />
    <br />
</asp:Content>

