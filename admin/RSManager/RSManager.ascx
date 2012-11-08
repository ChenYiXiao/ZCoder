<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RSManager.ascx.cs" Inherits="admin_RSManager_RSManager"  %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
<link href="images/RSManager.css" rel="stylesheet" type="text/css" />
<table class="style1">
    <tr>
        <th>
            文件名
        </th>
        <th>
            大小
        </th>
        <th>
            修改日期
        </th>
        <th>
            文件类型
        </th>
        <th>
            操作
        </th>
    </tr>
    <asp:Repeater ID="rpt_Objets" runat="server">
        <ItemTemplate>
            <tr>
                <td align="left">
                    <asp:Image ID="imgType" runat="server" ImageUrl='<%# Eval("type") %>' OnDataBinding="FixIcon"  />
                    <asp:HyperLink ID="hlName" runat="server" Text='<%# Eval("name", "{0}") %>' NavigateUrl='<%# Eval("name", "{0}") %>' OnDataBinding="FixUrl" ForeColor="#000"></asp:HyperLink>
              
                </td>
                <td>
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("size") %>' />
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