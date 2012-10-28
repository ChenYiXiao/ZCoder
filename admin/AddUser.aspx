<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="AddUser.aspx.cs" Inherits="admin_AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="A_L1" runat="server" Text="用户名："></asp:Label>
    <asp:TextBox ID="A_TB1" runat="server" OnTextChanged="A_TB1_TextChanged"></asp:TextBox>
    <br />
    <asp:Label ID="A_L2" runat="server" Text="密码："></asp:Label>
    <asp:TextBox ID="A_TB2" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="A_L4" runat="server" Text="邮箱："></asp:Label>
    <asp:TextBox ID="A_TB4" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="A_L5" runat="server" Text="用户权限"></asp:Label>
    <asp:CheckBox ID="A_CB1" runat="server" Text="管理员" />
    <br />
    <asp:Button ID="A_Button1" runat="server" OnClick="A_Button1_Click" Text="确定" 
        CssClass="zbutton" />
</asp:Content>
