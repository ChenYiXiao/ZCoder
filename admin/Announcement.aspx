<%@ Page Title=""Language="C#" MasterPageFile="~/admin/MasterPage.master"  AutoEventWireup="true" CodeFile="Announcement.aspx.cs" Inherits="admin_Announcement" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" runat="Server">
    <h2>
        公告</h2>
    <hr />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>"
        SelectCommand="SELECT tb_announcement.id, tb_announcement.uid, tb_announcement.amtitle, tb_announcement.essay, tb_announcement.uptime, tb_user.userName FROM  tb_announcement INNER JOIN  tb_user ON tb_announcement.uid = tb_user.id"
        OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    <br />
    <table width="95%" class="zTable" style="margin: auto">
        <tr>
            <th>
                ID
            </th>
            <th class="style1">
                公告名
            </th>
            <th>
                公告内容
            </th>
            <th>
                添加者
            </th>
            <th>
                上传日期
            </th>
            <th align="center" width="70px">
                操作
            </th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:HyperLink ID="amtitleLabel" runat="server" Text='<%# Eval("amtitle") %>'
                             />
                    </td>
                    <td>
                        <asp:Label ID="essayLabel" runat="server" Text='<%# Eval("essay") %>' />
                    </td>
                    <td>
                        <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                    </td>
                    <td>
                        <asp:Label ID="uptimeLabel" runat="server" Text='<%# Eval("uptime") %>' />
                    </td>
                    <td>
                        <asp:HyperLink ID="hlEdit" runat="server" Text="编辑" NavigateUrl='<%# Eval("id", "EditAnnouncement.aspx?id={0}") %>'
                            ForeColor="#666666"></asp:HyperLink>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text="删除" NavigateUrl='<%# Eval("id", "DelAnnouncement.aspx?id={0}") %>'
                            ForeColor="#666666"></asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href="AddAnnouncement.aspx" class="zMenuSeletcedA">添加公告
</a></asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="Ct1">
    <style type="text/css">
        .style1
        {
            width: 52px;
        }
    </style>
</asp:Content>


