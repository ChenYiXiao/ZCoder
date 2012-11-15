<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Counter.aspx.cs" Inherits="admin_Counter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="zTable" width="400px">
        <tr class="zTbTh">
            <th class="zTbTh" width="40%">
                统计项 
            </th>
            <th class="zTbTh" width="80%">
                统计值 
            </th>
        </tr>
        <tr class="zTbTd">
            <td align="center" class="zTbTd" style="background-color: #FFFFFF" width="40%">
                代码数</td>
            <td align="center" class="zTbTd" width="80%">
                <asp:Label ID="code_num" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr class="zTbTd">
            <td align="center" class="zTbTd" width="40%">
                注释数</td>
            <td align="center" class="zTbTd" width="80%">
                <asp:Label ID="note_num" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr class="zTbTd">
            <td align="center" class="zTbTd" width="40%">
                评论数 
            </td>
            <td align="center" class="zTbTd" width="80%">
                &nbsp;<asp:Label ID="comment_num" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr class="zTbTd">
            <td align="center" class="zTbTd" width="40%">
                用户数 
            </td>
            <td align="center" class="zTbTd" width="80%">
                <asp:Label ID="user_num" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

