<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CommentList1.aspx.cs" Inherits="CommentList1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>" 
            SelectCommand="SELECT tb_comment.nid, tb_note.id, tb_comment.context, tb_comment.uid, tb_comment.uptime FROM tb_comment INNER JOIN tb_note ON tb_comment.nid = @id">
            <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" />
        </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="nid" HeaderText="nid" SortExpression="nid" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="context" HeaderText="context" 
                SortExpression="context" />
            <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />
            <asp:BoundField DataField="uptime" HeaderText="uptime" 
                SortExpression="uptime" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
