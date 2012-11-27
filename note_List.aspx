<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="note_List.aspx.cs" Inherits="note_List" %>

<script runat="server">

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="注释列表"></asp:Label>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>" 
         SelectCommand="SELECT     tb_note.id, tb_note.noteName, tb_project.projectName, tb_user.userName, tb_note.upTime, tb_note.agree, tb_note.disagree
                        FROM         tb_note INNER JOIN
                        tb_code ON tb_note.cid = tb_code.id INNER JOIN
                        tb_user ON tb_note.uid = tb_user.id INNER JOIN
                        tb_project ON tb_code.pid = tb_project.id" onselecting="SqlDataSource1_Selecting" >
        <SelectParameters>
            <asp:QueryStringParameter Name="path" QueryStringField="path" />
        </SelectParameters>
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
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>


