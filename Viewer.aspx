<%@ Page Title="" Language="C#" AutoEventWireup="true"
    CodeFile="Viewer.aspx.cs" Inherits="Viewer" %>


    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <script type="text/javascript" src="scripts/shCore.js"></script>
    <script type="text/javascript" src="scripts/<%=langEntity.BrushFile %>"></script>
    <link type="text/css" rel="stylesheet" href="styles/shCoreDefault.css" />
    <script type="text/javascript">        SyntaxHighlighter.all();</script>
     <span style="font-size: small; color: #999999; font-weight: bold">源码文件名:<%=codeEntity.Path.Substring(codeEntity.Path.LastIndexOf("\\")+1,codeEntity.Path.Length-codeEntity.Path.LastIndexOf("\\")-1) %></span>
     <hr />
        <table width="100%" 
            style="color: #999999font-size: small; margin: auto; font-size: 12px; color: #999999;">
            <tr>
                <td width="20%">
                   上传用户:
                </td>
                <td>
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
                    
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
            </tr>
           
           
        </table>
        <%=Pre %>