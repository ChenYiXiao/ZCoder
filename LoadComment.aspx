<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoadComment.aspx.cs" Inherits="LoadComment" %>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/notes.css" />
</head>
<body >
     
    <form id="Form1" runat=server>
         

        <a href="comment.aspx?nid=<%=nid%>"><img src="images/comment.gif" title="评论"/>添加评论</a>
      
    <%  foreach (CommentEntity ce in assComments)
       { %>
      
    <div style=" border-bottom-style: solid; border-bottom-width:1px; border-bottom-color:#f7f7f7; margin-bottom:5px">
        <div class="qoute" style="float: left">
            <div style="margin-left: 28px; float: left; width: 279px;">
                <p class="text">
                
                    <%=ce.User.UserName %>  <%=ce.Id %>
                    发表于
                    <%=ce.UpTime %>&nbsp;</p>
                <p style="background-color: #f7f7f7; font-size: 14px; font-weight: bold; color: #333333;
                    padding: 10px;">
                    &nbsp;<%=ce.ConText %></p>
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