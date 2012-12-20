<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="NoteList.aspx.cs" Inherits="admin_NoteList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" runat="Server">
    <h2>
        注释列表</h2>
    <hr />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>"
        SelectCommand="SELECT     tb_note.id, tb_note.noteName, tb_project.projectName, tb_user.userName, tb_note.upTime, tb_note.agree, tb_note.disagree
FROM         tb_note INNER JOIN
                      tb_code ON tb_note.cid = tb_code.id INNER JOIN
                      tb_user ON tb_note.uid = tb_user.id INNER JOIN
                      tb_project ON tb_code.pid = tb_project.id" OnSelecting="SqlDataSource1_Selecting">
    </asp:SqlDataSource>
    <br />
    <table width="95%" class="zTable" style="margin: auto">
        <tr>
            <th>
                ID
            </th>
            <th>
                注释名
            </th>
            <th>
                所属源码
            </th>
            <th>
                上传人
            </th>
            <th>
                上传日期
            </th>
            <th>
                鲜花
            </th>
            <th>
                臭鸡蛋
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
                        <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("noteName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("projectName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="qqLabel" runat="server" Text='<%# Eval("userName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="regTimeLabel" runat="server" Text='<%# Eval("upTime") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("agree") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("disagree") %>' />
                    </td>
                    <td>
                      <asp:HyperLink ID="HyperLink1" runat="server" Text="删除"  NavigateUrl='<%# Eval("id", "delnote.aspx?id={0}") %>' ForeColor="#666666"></asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <br />
    <br />
</asp:Content>
