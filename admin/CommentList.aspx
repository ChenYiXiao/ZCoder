<%@ Page Title="" Language="C#"  MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="CommentList.aspx.cs" Inherits="admin_CommentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" Runat="Server">
     <h2>
        评论列表</h2>
    <hr />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>" 
        SelectCommand="SELECT    tb_comment.id,tb_comment.uid, tb_comment.nid, tb_user.userName, tb_note.noteName, tb_comment.commentTitle, tb_comment.context, tb_comment.agree, tb_comment.disagree, 
                       tb_comment.uptime
                       FROM         tb_comment INNER JOIN
                       tb_user ON tb_comment.uid = tb_user.id INNER JOIN
                       tb_note ON tb_comment.nid = tb_note.id"></asp:SqlDataSource>
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
     <th>评论者</th>
     <th>所属注释</th>
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
                        <asp:Label ID="uidLabel" runat="server" Text='<%# Eval("UserName") %>' />
                    </td>
                    <td>
                    <asp:Label ID="nidLabel" runat="server" Text='<%#Eval("noteName") %>' />
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

