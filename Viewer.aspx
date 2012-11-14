<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Viewer.aspx.cs" Inherits="Viewer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <script type="text/javascript" src="scripts/shCore.js"></script>
    <script type="text/javascript" src="scripts/<%=langEntity.BrushFile %>"></script>
    <link type="text/css" rel="stylesheet" href="styles/shCoreDefault.css" />
    <script type="text/javascript">        SyntaxHighlighter.all();</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="zRadioRec">
        <br />
        <table width="80%" style="margin: auto">
            <tr>
                <td width="20%">
                    源码文件名:
                </td>
                <td>
                    <%=codeEntity.Path.Substring(codeEntity.Path.LastIndexOf("\\")+1,codeEntity.Path.Length-codeEntity.Path.LastIndexOf("\\")-1) %>
                </td>
                <td>
                    语言：
                </td>
                <td>
                    <%= langEntity.Name %>
                </td>
            </tr>
             <tr>
                <td width="20%">
                    上传用户:
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td width="20%">
                    语言简介：
                </td>
                <td colspan="3">
                    <%=langEntity.Description %>
                </td>
            </tr>
           
           
        </table>
     
        <br />
     
        <%=Pre %>
    </div>
</asp:Content>
