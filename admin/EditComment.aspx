<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditComment.aspx.cs" Inherits="admin_EditComment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
&nbsp;<asp:Label ID="Label10" runat="server" CssClass="layPadding" Text="评论ID"></asp:Label>
    ：<asp:Label ID="lb_id" runat="server" CssClass="layPadding" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" CssClass="layPadding" Text="评论标题"></asp:Label>
    :<asp:TextBox ID="tb_ct" runat="server" CssClass="layPadding"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" CssClass="layPadding" Text="评论正文"></asp:Label>
    :<asp:TextBox ID="tb_context" runat="server" CssClass="layPadding"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" CssClass="layPadding" Text="顶"></asp:Label>
    :<asp:TextBox ID="tb_agree" runat="server" CssClass="layPadding"></asp:TextBox>
    <asp:Label ID="Label8" runat="server" CssClass="layPadding" Text="次"></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server" CssClass="layPadding" Text="踩"></asp:Label>
    :<asp:TextBox ID="tb_disagree" runat="server" CssClass="layPadding"></asp:TextBox>
    <asp:Label ID="Label9" runat="server" CssClass="layPadding" Text="次"></asp:Label>
    <br />
    <asp:Label ID="Label5" runat="server" CssClass="layPadding" Text="评论者ID"></asp:Label>
    :<asp:Label ID="lb_uid" runat="server" CssClass="layPadding" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="Label6" runat="server" CssClass="layPadding" Text="注释ID"></asp:Label>
    :<asp:Label ID="lb_nid" runat="server" CssClass="layPadding" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="Label7" runat="server" CssClass="layPadding" Text="评论时间"></asp:Label>
    :<asp:Label ID="lb_uptime" runat="server" CssClass="layPadding" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btn_edit" runat="server" CssClass="zbutton" 
        onclick="btn_edit_Click" Text="更新" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btn_cancel" runat="server" CssClass="zbutton" 
        onclick="btn_cancel_Click" Text="取消" />
&nbsp;
</asp:Content>

