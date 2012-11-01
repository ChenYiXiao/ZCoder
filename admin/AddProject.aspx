<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Master_Source.master" AutoEventWireup="true"
    CodeFile="AddProject.aspx.cs" Inherits="admin_AddProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" runat="Server">
    <div class="zRadioRec" style="background: white;">
        <h2>新建工程</h2>
    <hr />
        <table style="margin: auto" width="90%">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="工程名："></asp:Label>
                </td>
                <td class="layPadding">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="zTextBox"></asp:TextBox>
                    <br />
                </td>
                <td class="layPadding">
                    *工程名称，必填项</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="工程介绍："></asp:Label>
                </td>
                <td class="layPadding">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="zTextBox" Height="100px" 
                        TextMode="MultiLine"></asp:TextBox>
                    <br />
                </td>
                <td class="layPadding">
                    *工程介绍，必填项，不超过1000个字<br />
                    不允许使用Html标签。</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="快速上传："></asp:Label>
                </td>
                <td class="layPadding">
                    <asp:FileUpload ID="fu_ProjectZip" runat="server" CssClass="zTextBox" />
                    <br />
                </td>
                <td class="layPadding">
                    请将整个项目打包成一个zip压缩文件。<br />
                    目前只支持*.zip格式</td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td class="layPadding">
                    <asp:Button ID="btn_OK" runat="server" CssClass="zbutton" Text="确认" />
                </td>
                <td class="layPadding">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
