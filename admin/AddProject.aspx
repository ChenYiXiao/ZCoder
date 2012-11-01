<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Master_Source.master" AutoEventWireup="true"
    CodeFile="AddProject.aspx.cs" Inherits="admin_AddProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" runat="Server">
    
    <style type="text/css">
        .style1
        {
            color: #666666;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" runat="Server">
    <div class="zRadioRec" style="background: white;">
        <h2>
            新建工程</h2>
        <hr />
        <table style="margin: auto" width="90%">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="工程名："></asp:Label>
                </td>
                <td class="layPadding">
                    <asp:TextBox ID="tb_ProjectName" runat="server" CssClass="zTextBox"></asp:TextBox>
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
                    <asp:DropDownList ID="ddl_Type" runat="server" DataSourceID="sds_Types" 
                        DataTextField="typeName" DataValueField="id" Height="35px" Width="235px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="sds_Types" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>" 
                        SelectCommand="SELECT [typeName], [id] FROM [tb_type]"></asp:SqlDataSource>
                </td>
                <td class="layPadding">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="工程介绍："></asp:Label>
                </td>
                <td class="layPadding">
                    <asp:TextBox ID="tb_Description" runat="server" CssClass="zTextBox" 
                        Height="100px" TextMode="MultiLine"></asp:TextBox>
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
                    <asp:Button ID="btn_OK" runat="server" CssClass="zbutton" Text="确认" OnClick="btn_OK_Click" />
                </td>
                <td class="layPadding">
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
