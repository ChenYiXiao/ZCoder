<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Master_User.master" AutoEventWireup="true" CodeFile="DelUser.aspx.cs" Inherits="admin_DelUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" Runat="Server">
    <h2>
        &nbsp;删除用户</h2>
    <hr />
    <br />
    <table style="margin: auto" width="95%">
        <tr>
            <td align="center" class="layPadding" colspan="2">
                确定删除该用户？<br />
            </td>
        </tr>
        <tr>
            <td align="center" class="layPadding">
                <asp:Label ID="Label1" runat="server" Text="ID："></asp:Label>
            </td>
            <td align="left" class="layPadding">
                <asp:Label ID="lb_Id" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="layPadding">
                <asp:Label ID="Label2" runat="server" Text="用户名："></asp:Label>
            </td>
            <td align="left" class="layPadding">
                <asp:Label ID="lb_UserName" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="layPadding">
                <asp:Label ID="Label3" runat="server" Text="邮箱："></asp:Label>
            </td>
            <td align="left" class="layPadding">
                <asp:Label ID="lb_Email" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="layPadding">
                <asp:Label ID="Label4" runat="server" Text="性别"></asp:Label>
            </td>
            <td align="left" class="layPadding">
                <asp:Label ID="lb_Sex" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="layPadding">
                <asp:Label ID="Label5" runat="server" Text="用户类型："></asp:Label>
            </td>
            <td align="left" class="layPadding">
                <asp:Label ID="lb_IsAdmin" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="layPadding">
                <asp:Button ID="Button1" runat="server" CssClass="zbutton" Text="是" />
            </td>
            <td class="layPadding">
                <asp:Button ID="Button2" runat="server" CssClass="zbutton" 
                    onclick="Button2_Click" Text="否" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

