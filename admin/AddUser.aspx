<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="AddUser.aspx.cs" Inherits="admin_AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="A_L1" runat="server" Text="新增用户名："></asp:Label>
<asp:TextBox ID="A_TB1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="A_L2" runat="server" Text="密码："></asp:Label>
<asp:TextBox ID="A_TB2" runat="server"></asp:TextBox>
<asp:Label ID="A_L3" runat="server" Text="确认密码："></asp:Label>
<asp:TextBox ID="A_TB3" runat="server"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="A_TB2" ControlToValidate="A_TB3" ErrorMessage="输入密码不一致"></asp:CompareValidator>
    <asp:Label ID="A_L4" runat="server" Text="邮箱："></asp:Label>
    <asp:TextBox ID="A_TB4" runat="server"></asp:TextBox>
<asp:Label ID="A_L5" runat="server" Text="用户权限"></asp:Label>
    <asp:CheckBox ID="A_CB1" runat="server" Text="管理员" />
    <asp:Button ID="A_Button1" runat="server" onclick="A_Button1_Click" Text="确定" />
</asp:Content>

