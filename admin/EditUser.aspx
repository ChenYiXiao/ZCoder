<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="EditUser.aspx.cs" Inherits="admin_EditUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" Runat="Server">
    <h2>&nbsp;编辑用户</h2>
    <hr />
    <br />
    <table style="margin: auto" width="80%">
        <tr>
            <td align="center">
                <asp:Label ID="Label7" runat="server" Text="用户ID："></asp:Label>
            </td>
            <td>
                <asp:Label ID="lb_ID" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
    <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
            </td>
            <td>
                <br />
    <asp:TextBox ID="tb_UserName" runat="server" CssClass="zTextBox"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
    <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="tb_PassWord" runat="server" CssClass="zTextBox"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
    <asp:Label ID="Label3" runat="server" Text="邮箱："></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="tb_Email" runat="server" CssClass="zTextBox"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
    <asp:Label ID="Label4" runat="server" Text="QQ："></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="tb_QQ" runat="server" CssClass="zTextBox"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
    <asp:Label ID="Label6" runat="server" Text="性别："></asp:Label>
            </td>
            <td>
    <asp:RadioButtonList ID="rb_Sex" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem Value="man">男</asp:ListItem>
        <asp:ListItem Value="woman">女</asp:ListItem>
    </asp:RadioButtonList>
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
    <asp:Label ID="Label5" runat="server" Text="权限："></asp:Label>
            </td>
            <td>
    <asp:CheckBox ID="cb_IsAdmin" runat="server" Text="管理员" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label8" runat="server" Text="注册日期："></asp:Label>
            </td>
            <td>
                <asp:Label ID="lb_RegTime" runat="server"></asp:Label>
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

