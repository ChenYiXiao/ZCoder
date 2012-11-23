<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="ProjectList.aspx.cs"
    MasterPageFile="~/admin/MasterPage.master" Inherits="admin_ProjectList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" runat="Server">
    <h2>
        工程列表</h2>
    <hr />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>"
        SelectCommand="SELECT tb_type.typeName, tb_project.projectName, tb_project.uid, tb_project.id, tb_project.description, tb_project.upTime, tb_user.userName FROM tb_type INNER JOIN tb_project ON tb_type.id = tb_project.tid INNER JOIN tb_user ON tb_project.uid = tb_user.id"
        OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    <br />
    <table width="95%" class="zTable" style="margin: auto">
        <tr>
            <th>
                ID
            </th>
            <th>
                工程名
            </th>
            <th>
                类型
            </th>
            <th>
                工程说明
            </th>
            <th>
                上传人
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
                        <asp:HyperLink ID="userNameLabel" runat="server" Text='<%# Eval("projectname") %>'
                            NavigateUrl='<%# Eval("id") %>' OnDataBinding="FixNameUrl" ForeColor="#333333" />
                    </td>
                    <td>
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("typename") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("description") %>' />
                    </td>
                    <td>
                        <asp:Label ID="qqLabel" runat="server" Text='<%# Eval("username") %>' />
                    </td>
                    <td>
                        <asp:Label ID="regTimeLabel" runat="server" Text='<%# Eval("upTime") %>' />
                    </td>
                    <td>
                        <asp:HyperLink ID="hlEdit" runat="server" Text="编辑" NavigateUrl='<%# Eval("id", "edituser.aspx?id={0}") %>'
                            ForeColor="#666666"></asp:HyperLink>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text="删除" NavigateUrl='<%# Eval("id", "deluser.aspx?id={0}") %>'
                            ForeColor="#666666"></asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <br />
    <br />
</asp:Content>
