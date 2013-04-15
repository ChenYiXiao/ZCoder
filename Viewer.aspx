<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="Viewer.aspx.cs"
    Inherits="Viewer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <link type="text/css" rel="Stylesheet" href="layout.css" />
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="js/Viewer.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <script type="text/javascript" src="scripts/XRegExp.js"></script>
    <script type="text/javascript" src="scripts/shCore.js"></script>
    <script type="text/javascript" src="scripts/<%=langEntity.BrushFile %>"></script>
    <link type="text/css" rel="stylesheet" href="styles/shCore.css" />
    <link type="text/css" rel="stylesheet" href="styles/shThemeDefault.css" />
    <script type="text/javascript">
        function Inte() {
            parent.cid=<%=Request.QueryString["id"].ToString() %>;
            var LineNum= <%=jsaLineNum %>;
            var LineCount= <%=jsaLineCount %>;
            for(var i=0;i<LineNum.length;i++)
            {
                
                $.get('CheckSuggest.aspx?startline='+LineNum[i]+'&count='+LineCount[i],function(data){
                    var res= $.parseJSON(data);
                 
                   if(res.status==1){
                        $('[id=LineNum'+res.data+']:odd').prepend($('<div class="LineDiv" style="position: absolute;left:-8px;"><span> <a class="LineDivA"><img src="images/suggest.png"'+'title="共有'+res.count+'条注释以该行为起始行" onClick="parent.SetLoadLine('+res.data+');parent.ClickNote(event);"></img></a></span></div>'));
                    }
                    else{
                        $('[id=LineNum'+res.data+']:odd').prepend($('<div class="LineDiv" style="position: absolute;left:-8px;"><span> <a class="LineDivA"><img src="images/note.png"'+'title="共有'+res.count+'条注释以该行为起始行" onClick="parent.SetLoadLine('+res.data+');parent.ClickNote(event);"></img></a></span></div>'));
                    }
                });
               
            }
        };
    
        SyntaxHighlighter.all(); </script>
</head>
<body style="background: white;">
    <span style="font-size: small; color: #999999; font-weight: bold">源码文件名:<%=codeEntity.Path.Substring(codeEntity.Path.LastIndexOf("\\")+1,codeEntity.Path.Length-codeEntity.Path.LastIndexOf("\\")-1) %></span>
    <hr />
    <table width="100%" style="color: #999999font-size: small; margin: auto; font-size: 12px; color: #999999;">
        <tr>
            <td width="20%">上传用户:
            </td>
            <td width="20%">
                <%=userEntity.UserName %>
            </td>
            <td>语言：
            </td>
            <td>
                <%= langEntity.Name %>
            </td>
            <td width="50%"></td>
        </tr>
    </table>
    <script type="syntaxhighlighter" class="brush: <%=langEntity.BrushAliases %>;"><![CDATA[
<%=Pre %>
]]></script>
    <script type="text/jscript">
        function Highlight() {
            for (var i = parent.startLine; i <= parent.endLine; i++) {
                $('[id=LineNum' + i + ']').css('background-color', '#ddd');
            }
        }
        function Lowlight() {
            for (var i = parent.startLine; i <= parent.endLine; i++) {
                $('[id=LineNum' + i + ']').css('background-color', '');
            }
        }
   
    </script>
</body>
</html>
