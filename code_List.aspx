﻿
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="code_List.aspx.cs" Inherits="code_List" %>

<script runat="server">

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="源码列表"></asp:Label>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>" 
        SelectCommand="SELECT tb_code.id, tb_code.upTime, tb_project.projectName, tb_code.path FROM tb_code INNER JOIN tb_project ON tb_code.pid = tb_project.id WHERE (tb_code.path LIKE '%' + @path + '%')" 
        onselecting="SqlDataSource1_Selecting">
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
                路径
            </th>  
            <th>
                所属工程
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
                        <asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("path") %>' />
                    </td>
                       <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("projectName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="regTimeLabel" runat="server" Text='<%# Eval("upTime") %>' />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>


