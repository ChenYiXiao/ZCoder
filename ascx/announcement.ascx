<%@ Control Language="C#" AutoEventWireup="true" CodeFile="announcement.ascx.cs"
    Inherits="ascx_announcement" %>
<script type="text/javascript" src="/js/announcement.js"></script>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>"
    SelectCommand="SELECT [amtitle], [essay] FROM [tb_announcement]"></asp:SqlDataSource>
<div style="overflow: hidden; height: 28px; margin-left: 5px;">
    <div id="marqueebox" style="margin-top: -48px; height: 252px;">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="tp" title="<%# Eval("essay") %> ">
                    <%# Eval("amtitle") %>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <script type="text/javascript">        startmarquee(28, 24, 3000); </script>
</div>
