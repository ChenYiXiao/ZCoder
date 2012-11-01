<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Master_Source.master" AutoEventWireup="true"
    CodeFile="AddProject.aspx.cs" Inherits="admin_AddProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" runat="Server">
    <link rel="Stylesheet" href="../js/uploadify.css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="/js/jquery.uploadify.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#file_upload').uploadify({
                'swf': '/js/uploadify.swf',
                'uploader': '/upload.aspx',
             
                'fileTypeDesc': '选择zip',
                'fileTypeExts': '*.zip',
                'formData': { 'ASPSESSID':<%=  Request.Cookies[FormsAuthentication.FormsCookieName]==null ? "''" : Request.Cookies[FormsAuthentication.FormsCookieName].Value %>, 'AUTHID':'<%= Session.SessionID %>'},
                'multi': false,
                'buttonText':'上传工程'
                // Put your options here
            });
            

        });
    </script>
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
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="zTextBox"></asp:TextBox>
                    <br />
                </td>
                <td class="layPadding">
                    *工程名称，必填项
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="工程介绍："></asp:Label>
                </td>
                <td class="layPadding">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="zTextBox" Height="100px" TextMode="MultiLine"></asp:TextBox>
                    <br />
                </td>
                <td class="layPadding">
                    *工程介绍，必填项，不超过1000个字<br />
                    不允许使用Html标签。
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="快速上传："></asp:Label>
                </td>
                <td class="layPadding">
                    <input type="file" name="file_upload" id="file_upload" />
                </td>
                <td class="layPadding">
                    请将整个项目打包成一个zip压缩文件。<br />
                    目前只支持*.zip格式
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
