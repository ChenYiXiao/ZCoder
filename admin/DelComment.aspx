<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="DelComment.aspx.cs" Inherits="admin_DelComment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" runat="Server">
    <table width="100%">
        <tr>
            <th colspan="2">
                确认删除评论
            </th>
           
        </tr>
        <tr>
            <td align="right" width="30%">
                <asp:Label ID="Label2" runat="server" CssClass="layPadding" Text="ID"></asp:Label>
                ：</td>
            <td>
                <asp:Label ID="lb_id" runat="server" CssClass="layPadding" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                <asp:Label ID="Label3" runat="server" CssClass="layPadding" Text="评论标题"></asp:Label>
                ：</td>
            <td>
                <asp:Label ID="lb_ct" runat="server" CssClass="layPadding" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                <asp:Label ID="Label4" runat="server" CssClass="layPadding" Text="评论内容"></asp:Label>
                ：</td>
            <td>
                <asp:Label ID="lb_context" runat="server" CssClass="layPadding" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                <asp:Label ID="Label5" runat="server" CssClass="layPadding" Text="赞"></asp:Label>
                ：<asp:Label ID="lb_agree" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" CssClass="layPadding" Text="踩"></asp:Label>
                ：<asp:Label ID="lb_disagree" runat="server" CssClass="layPadding" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                <asp:Label ID="Label7" runat="server" CssClass="layPadding" Text="评论者ID"></asp:Label>
                ：</td>
            <td>
                <asp:Label ID="lb_uid" runat="server" CssClass="layPadding" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                <asp:Label ID="Label8" runat="server" CssClass="layPadding" Text="注释ID"></asp:Label>
                ：</td>
            <td>
                <asp:Label ID="lb_nid" runat="server" CssClass="layPadding" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%">
                <asp:Label ID="Label9" runat="server" CssClass="layPadding" Text="评论时间"></asp:Label>
                ：</td>
            <td>
                <asp:Label ID="lb_uptime" runat="server" CssClass="layPadding" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" width="30%" colspan="2">
                <asp:Button ID="btn_ok" runat="server" OnClick="btn_ok_Click" Text="是" CssClass="searchbtn" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Cancel" runat="server" OnClick="btn_Cancel_Click" Text="否" CssClass="searchbtn" />
            </td>
            
        </tr>
    </table>
    <br />
</asp:Content>
