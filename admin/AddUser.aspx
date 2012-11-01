<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Master_User.master" AutoEventWireup="true"
    CodeFile="AddUser.aspx.cs" Inherits="admin_AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" runat="Server">
    <style type="text/css">
        .adduser
        {
            width: auto;
            height: auto;
            top: auto;
            right: auto;
            bottom: auto;
            left: auto;
        }
    .style1
    {
        width: 100%;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" runat="Server">
    <h2>&nbsp;新增用户</h2>
    <hr />
&nbsp;<table class="style1">
    <tr>
        <td align="right">
            <asp:Label ID="A_L1" runat="server" Text="用户名："></asp:Label>
        </td>
        <td>
            <br />
&nbsp;&nbsp;
    <asp:TextBox ID="tb_UserName" runat="server" OnTextChanged="A_TB1_TextChanged" 
                CssClass="zTextBox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right">
    <asp:Label ID="A_L2" runat="server" Text="密码："></asp:Label>
        </td>
        <td>
            <br />
&nbsp;&nbsp;
    <asp:TextBox ID="tb_Password" runat="server" CssClass="zTextBox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right">
    <asp:Label ID="A_L4" runat="server" Text="邮箱："></asp:Label>
        </td>
        <td>
            <br />
&nbsp;&nbsp;
    <asp:TextBox ID="tb_Email" runat="server" CssClass="zTextBox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="right">
    <asp:Label ID="A_L5" runat="server" Text="用户权限"></asp:Label>
        </td>
        <td>
            <br />
&nbsp;&nbsp;
    <asp:CheckBox ID="cb_IsAdmin" runat="server" Text="管理员" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <br />
&nbsp;&nbsp;
    <asp:Button ID="btn_OK" runat="server" OnClick="A_Button1_Click" Text="确定" 
        CssClass="zbutton" />
            <br />
            <br />
        </td>
    </tr>
</table>
</asp:Content>
