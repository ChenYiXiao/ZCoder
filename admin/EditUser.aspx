<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="EditUser.aspx.cs" Inherits="admin_EditUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="新用户名："></asp:Label>
    <asp:TextBox ID="tb_UserName" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="新密码："></asp:Label>
    <asp:TextBox ID="tb_PassWord" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="新邮箱："></asp:Label>
    <asp:TextBox ID="tb_Email" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="新QQ："></asp:Label>
    <asp:TextBox ID="tb_QQ" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Text="新性别："></asp:Label>
    <asp:RadioButtonList ID="rb_Sex" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem Value="man">男</asp:ListItem>
        <asp:ListItem Value="woman">女</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:Label ID="Label5" runat="server" Text="权限："></asp:Label>
    <asp:CheckBox ID="tb_CheckBox" runat="server" Text="管理员" />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="height: 21px" Text="修改" />
    <br />
</asp:Content>

