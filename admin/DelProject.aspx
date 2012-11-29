<%@ Page Language="C#"   MasterPageFile="~/admin/MasterPage.master"  AutoEventWireup="true" CodeFile="DelProject.aspx.cs" Inherits="admin_DelProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: large;
        }
        .searchbtn
        {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" Runat="Server">
    <h2>
        &nbsp;删除工程 </h2>
    <hr />
    <br />
    <table style="margin: auto" width="95%">
        <tr>
            <th align="center" class="layPadding" colspan="2" width="200px">
                <span class="style1"><strong>确定删除该工程？</strong></span><br />
            </th>
        </tr>
        <tr>
            <td align="center" class="layPadding" width="200px">
                <asp:Label ID="Label1" runat="server" Text="ID："></asp:Label>
            </td>
            <td align="left" class="layPadding">
                <asp:Label ID="lb_Id" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="layPadding" width="200px">
                <asp:Label ID="Label2" runat="server" Text="工程名："></asp:Label>
            </td>
            <td align="left" class="layPadding">
                <asp:Label ID="lb_ProjectName" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="layPadding" width="200px">
                <asp:Label ID="Label3" runat="server" Text="上传人："></asp:Label>
            </td>
            <td align="left" class="layPadding">
                <asp:Label ID="lb_User" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         <tr>
            <td align="center" class="layPadding" width="200px">
                <asp:Label ID="Label6" runat="server" Text="工程描述"></asp:Label>
            </td>
            <td align="left" class="layPadding">
                <asp:Label ID="lb_description" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="layPadding" width="200px">
                <asp:Label ID="Label4" runat="server" Text="上传时间"></asp:Label>
            </td>
            <td align="left" class="layPadding">
                <asp:Label ID="lb_UpTime" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="layPadding" width="200px">
                <asp:Label ID="Label5" runat="server" Text="工程类型："></asp:Label>
            </td>
            <td align="left" class="layPadding">
                <asp:Label ID="lb_Type" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="layPadding" width="200px">
                <asp:Button ID="btn_OK" runat="server" CssClass="searchbtn" Text="是" 
                    onclick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_Cancel" runat="server" CssClass="searchbtn" 
                    onclick="Button2_Click" Text="否" />
            </td>
            <td class="layPadding">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="200px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

