<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RSManager.ascx.cs" Inherits="admin_RSManager_RSManager" %>
<style type="text/css">
    
</style>
<link href="/admin/RSManager/images/RSManager.css" rel="stylesheet" type="text/css" />
<table class="RSTable" width="95%">
    <tr>
        <td colspan="6" align="left">
            工程名：XX
        </td>
    </tr>
    <asp:Repeater ID="rpt_Objets" runat="server">
        <ItemTemplate>
            <tr class="RSTableTR">
                <td width="20px">
                    <asp:Image ID="imgType" runat="server" ImageUrl='<%# Eval("type") %>' OnDataBinding="FixIcon" />
                </td>
                <td align="left">
                    <asp:HyperLink ID="hlName" runat="server" Text='<%# Eval("name", "{0}") %>' NavigateUrl='<%# Eval("name", "{0}") %>'
                        OnDataBinding="FixUrl" ForeColor="#000"></asp:HyperLink>
                </td>
                <td>
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("size","{0} B") %>' />
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("mTime") %>' />
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("type") %>' />
                </td>
                <td>
                    <asp:HyperLink ID="hlEdit" runat="server" Text="查看" NavigateUrl='<%# Eval("name", "edituser.aspx?id={0}") %>'
                        ForeColor="#666666"></asp:HyperLink>
                    <asp:HyperLink ID="HyperLink1" runat="server" Text="删除" NavigateUrl='<%# Eval("name", "deluser.aspx?id={0}") %>'
                        ForeColor="#666666"></asp:HyperLink>
                </td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
</table>
