<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="EditProject.aspx.cs" Inherits="admin_EditProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 55px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" Runat="Server">
    <h2>&nbsp;编辑工程</h2>
    <hr />
    <br />
    <table style="margin: auto" width="80%">
        <tr>
            <td align="center">
                <asp:Label ID="Label7" runat="server" Text="工程ID："></asp:Label>
            </td>
            <td>
                <asp:Label ID="lb_ID" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
    <asp:Label ID="Label1" runat="server" Text="工程名："></asp:Label>
            </td>
            <td>
                <br />
    <asp:TextBox ID="tb_ProjectName" runat="server" CssClass="inputbox"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
    <asp:Label ID="Label2" runat="server" Text="上传人："></asp:Label>
            </td>
            <td>
                <br />
     <asp:Label ID="lb_User" runat="server"></asp:Label> 
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" class="style1">
    <asp:Label ID="Label4" runat="server" Text="工程类型："></asp:Label>
            </td>
            <td class="style1">
                <asp:DropDownList ID="db_Type" runat="server" DataSourceID="sds_Types" 
                    DataTextField="typeName" DataValueField="id" CssClass="inputbox">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sds_Types" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>" 
                    SelectCommand="SELECT [typeName], [id] FROM [tb_type]"></asp:SqlDataSource>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
    <asp:Label ID="Label3" runat="server" Text="工程描述："></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="tb_description" runat="server" CssClass="inputbox"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label8" runat="server" Text="上传日期："></asp:Label>
            </td>
            <td>
                <asp:Label ID="lb_UpTime" runat="server"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                </td>
            <td>
                <br />
    <asp:Button ID="btn_Edit" runat="server" onclick="btnEdit_Click" 
         Text="修改" CssClass="searchbtn" />
                <br />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

