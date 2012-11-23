<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Projects.aspx.cs" Inherits="U_P_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="zRadioRec">
      &nbsp;
        <h2>现有工程</h2>
       <hr />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>"
            SelectCommand="SELECT tb_type.typeName, tb_project.projectName, tb_project.uid, tb_project.id, tb_project.description, tb_project.upTime, tb_user.userName FROM tb_type INNER JOIN tb_project ON tb_type.id = tb_project.tid INNER JOIN tb_user ON tb_project.uid = tb_user.id">
        </asp:SqlDataSource>
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
            </tr>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("projectname") %>' />
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
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
        <br />
    </div>
</asp:Content>
