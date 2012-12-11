<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="EditAnnouncement.aspx.cs" Inherits="admin_EditAnnouncement" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 55px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" Runat="Server">
    <h2>&nbsp;编辑公告</h2>
    <hr />
    <br />
    <table style="margin: auto" width="80%">
        <tr>
            <td align="center">
                <asp:Label ID="Label7" runat="server" Text="公告ID："></asp:Label>
            </td>
            <td>
                <asp:Label ID="lb_ID" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
    <asp:Label ID="Label1" runat="server" Text="公告名："></asp:Label>
            </td>
            <td>
                <br />
    <asp:TextBox ID="tb_amtitle" runat="server" CssClass="inputbox"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
    <asp:Label ID="Label2" runat="server" Text="添加者："></asp:Label>
            </td>
            <td>
                <br />
     <asp:Label ID="lb_User" runat="server"></asp:Label> 
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
    <asp:Label ID="Label3" runat="server" Text="公告内容："></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="lb_essay" runat="server" CssClass="inputbox" Height="81px" 
                    TextMode="MultiLine" Width="292px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label8" runat="server" Text="日期："></asp:Label>
            </td>
            <td>
                <asp:Label ID="lb_UpTime" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                </td>
            <td>
                <br />
    <asp:Button ID="btn_Edit" runat="server" onclick="btnEdit_Click" 
         Text="修改" CssClass="searchbtn" />
                <br />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

