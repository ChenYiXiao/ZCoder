<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Counter.aspx.cs" Inherits="admin_Counter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" Runat="Server">
    <table class="zTable" width="100%" style="margin: auto">
        <tr class="zTbTh">
            <th class="zTbTh" width="40%">
                统计项 
            </th>
            <th class="zTbTh" width="80%">
                统计值 
            </th>
        </tr>
        <tr class="zTbTd">
            <td align="center" class="zTbTd" width="40%">
                代码数</td>
            <td align="center" class="zTbTd" width="80%">
                <asp:Label ID="code_num" runat="server" Text="0"></asp:Label>
            </td>
        </tr>
        <tr class="zTbTd">
            <td align="center" class="zTbTd" width="40%">
                注释数</td>
            <td align="center" class="zTbTd" width="80%">
                <asp:Label ID="note_num" runat="server" Text="0"></asp:Label>
            </td>
        </tr>
        <tr class="zTbTd">
            <td align="center" class="zTbTd" width="40%">
                评论数 
            </td>
            <td align="center" class="zTbTd" width="80%">
                <asp:Label ID="comment_num" runat="server" Text="0"></asp:Label>
            </td>
        </tr>
        <tr class="zTbTd">
            <td align="center" class="zTbTd" width="40%">
                用户数 
            </td>
            <td align="center" class="zTbTd" width="80%">
                <asp:Label ID="user_num" runat="server" Text="0"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

