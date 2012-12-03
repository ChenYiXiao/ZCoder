<%@ Page Title="" Language="C#"  MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Commentlist.aspx.cs" Inherits="admin_Commentlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="commentTitle" HeaderText="commentTitle" 
                SortExpression="commentTitle" />
            <asp:BoundField DataField="context" HeaderText="context" 
                SortExpression="context" />
            <asp:BoundField DataField="agree" HeaderText="agree" SortExpression="agree" />
            <asp:BoundField DataField="disagree" HeaderText="disagree" 
                SortExpression="disagree" />
            <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />
            <asp:BoundField DataField="nid" HeaderText="nid" SortExpression="nid" />
            <asp:BoundField DataField="uptime" HeaderText="uptime" 
                SortExpression="uptime" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>" 
        SelectCommand="SELECT [commentTitle], [context], [agree], [disagree], [uid], [nid], [uptime] FROM [tb_comment]">
    </asp:SqlDataSource>
</asp:Content>

