<%@ Page Title="" Language="C#" AutoEventWireup="true" MasterPageFile="~/admin/MasterPage.master"
    CodeFile="AddProject.aspx.cs" Inherits="admin_AddProject" %>

<asp:Content ID="c1" ContentPlaceHolderID="Ct2" runat="server">
    <div>
        <h2>
            新建工程</h2>
        <hr />
        <table style="margin: auto" width="90%">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="工程名："></asp:Label>
                </td>
                <td class="layPadding">
                    <asp:TextBox ID="tb_ProjectName" runat="server" CssClass="inputbox"></asp:TextBox>
                    <br />
                </td>
                <td class="layPadding">
                    *工程名称，必填项
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="工程分类："></asp:Label>
                </td>
                <td class="layPadding">
                    <asp:DropDownList ID="ddl_Type" runat="server" DataSourceID="sds_Types" DataTextField="typeName"
                        DataValueField="id" CssClass="inputbox">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="sds_Types" runat="server" ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>"
                        SelectCommand="SELECT [typeName], [id] FROM [tb_type]"></asp:SqlDataSource>
                </td>
                <td class="layPadding">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="工程介绍："></asp:Label>
                </td>
                <td class="layPadding">
                    <asp:TextBox ID="tb_Description" runat="server" CssClass="inputbox" Height="100px"
                        TextMode="MultiLine"></asp:TextBox>
                    <br />
                </td>
                <td class="layPadding">
                    *工程介绍，必填项，不超过1000个字<br />
                    不允许使用Html标签。
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td class="layPadding">
                    <asp:Button ID="btn_OK" runat="server" CssClass="searchbtn" Text="确认" 
                        OnClick="btn_OK_Click" />
                </td>
                <td class="layPadding">
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
  
</asp:Content>
