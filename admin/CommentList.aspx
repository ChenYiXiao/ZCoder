<%@ Page Title="" Language="C#"  MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="CommentList.aspx.cs" Inherits="admin_CommentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" Runat="Server">
     <h2>
        评论列表</h2>
    <hr />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>" 
        SelectCommand="SELECT * FROM [tb_comment]"></asp:SqlDataSource>
     <table width="95%" class="zTable"  style="magin:auto">
     <tr>
     <th>
     ID</th>
     <th>
     评论标题</th>
     <th>
     正文</th>
     <th>
     赞</th>
     <th>踩</th>
     <th>评论者ID</th>
     <th>注释ID</th>
     <th>评论日期</th>
     <th>操作</th>
     </tr>
     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("commentTitle") %>' />
                    </td>
                    <td>
                        <asp:Label ID="contextLabel" runat="server" Text='<%# Eval("context") %>' />
                    </td>
                    <td>
                        <asp:Label ID="agreeLabel1" runat="server" Text='<%# Eval("agree") %>' />
                    </td>
                    <td>
                        <asp:Label ID="disagreeLabel" runat="server" Text='<%# Eval("disagree") %>' />
                    </td>
                    <td>
                        <asp:Label ID="uidLabel" runat="server" Text='<%# Eval("uid") %>' />
                    </td>
                    <td>
                    <asp:Label ID="nidLabel" runat="server" Text='<%#Eval("nid") %>' />
                    </td>
                    <td>
                    <asp:Label ID="uptimeLabel1" runat="server" Text='<%#Eval("uptime") %>' />
                    </td>
                    <td>
                        <asp:HyperLink ID="hlEdit" runat="server" Text="编辑" NavigateUrl='<%# Eval("id", "EditComment.aspx?id={0}") %>'
                            ForeColor="#666666"></asp:HyperLink>
                        <asp:HyperLink ID="HyperLink1" runat="server" Text="删除" NavigateUrl='<%# Eval("id", "DelComment.aspx?id={0}") %>'
                            ForeColor="#666666"></asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
     </table>
</asp:Content>

