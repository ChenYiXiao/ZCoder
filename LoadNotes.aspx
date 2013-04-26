<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoadNotes.aspx.cs" Inherits="LoadNotes" %>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/notes.css" />
</head>
<body >
   
    <form id="Form1" runat=server>
    <% foreach (NoteEntity ne in assNotes)
       { %>
    <div style=" border-bottom-style: solid; border-bottom-width:1px; border-bottom-color:#f7f7f7; margin-bottom:5px">
        <div class="qoute" style="float: left">
            <div style="margin-left: 28px; float: left; width: 279px;">
                <p class="text">
                
                    <%=ne.User.UserName %>  <%=ne.Id %>
                    发表于
                    <%=ne.UpTime %><img src="images/comment.gif" title="评论"/>
                     </p>
                <p class="text">
                    [<%=ne.Agree %>]<a href="Do_Ding.aspx?id=<%=ne.Id %>&cid=<%=ne.Cid %>&startline=<%=ne.StartLine%>"><img src="images/approve.gif" /></a>
                    [<%=ne.Disagree %>]<a href="Do_Cai.aspx?id=<%=ne.Id %>&cid=<%=ne.Cid %>&startline=<%=ne.StartLine%>"><img src="images/disapprove.gif" /></a>
                    <%if (UserOperation.CheckIsAdmin(Session)){ %>&nbsp; <a <%if(ne.Recommend==1){Response.Write("style=display:none");}%> href="doSuggest.aspx?id=<%=ne.Id %>&cid=<%=ne.Cid %>&startline=<%=ne.StartLine%>">设为推荐</a><a <%if(ne.Recommend==0){Response.Write("style=display:none");} %> href="CancelSuggest.aspx?id=<%=ne.Id %>&cid=<%=ne.Cid %>&startline=<%=ne.StartLine%>">取消推荐</a>  <%} %>
                    
                </p>
                <p style="background-color: #f7f7f7; font-size: 14px; font-weight: bold; color: #333333;
                    padding: 10px;">
                    &nbsp;<%=ne.Context %></p>
                    <p class="text">
                    起始行：<%=ne.StartLine %> 终止行：<%=ne.EndLine %>
                    <img src="images/sign.png" title="点击标记出该注释所在行" onclick="parent.PointLines(<%=ne.StartLine %>,<%=ne.EndLine %>)" /> <img src="images/eraser.png" title="点击擦除已被标注的行。" onclick="parent.CleanLines(<%=ne.StartLine %>,<%=ne.EndLine %>)" /></p>
   
            </div>
        </div>
        <div style="margin-bottom: 0px; bottom: 0px;">
            <img src="images/icon_quote_e.gif" /></div>
        <div style="clear: both">
        </div>
    </div>
    <%} %>
        </form>

</body>
</html>