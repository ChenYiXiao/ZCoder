<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Master_Source.master" AutoEventWireup="true" CodeFile="UploadSource.aspx.cs" Inherits="admin_UploadSource" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" Runat="Server">
    <link rel="Stylesheet" href="../js/uploadify.css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="/js/jquery.uploadify.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#file_upload').uploadify({
                'swf': '/js/uploadify.swf',
                'uploader': '/upload.aspx',
                'uploadLimit' : 1,
             'removeCompleted' : false,
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
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" Runat="Server">
    <div class="zRadioRec">
    <h2>上传源码</h2>
    <hr />
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                选择要上传的工程：</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="zTextBox"></asp:TextBox>
            </td>
        </tr>
        <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="快速上传："></asp:Label>
                </td>
                <td class="layPaddingAndCenter" align="center">
                    <input type="file" name="file_upload" id="file_upload" />
                </td>
                <td class="layPadding">
                    请将整个项目打包成一个zip压缩文件。<br />
                    目前只支持*.zip格式
                </td>
            </tr>
    </table>
</div>
</asp:Content>

