<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoadNotes.aspx.cs" Inherits="LoadNotes" %>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/notes.css" />
</head>
<body>
    <% foreach (NoteEntity ne in assNotes)
       { %>
    <div style=" border-bottom-style: solid; border-bottom-width:1px; border-bottom-color:#f7f7f7; margin-bottom:5px">
        <div class="qoute" style="float: left">
            <div style="margin-left: 28px; float: left;">
                <p class="text">
                    <%=ne.User.UserName %>
                    发表于
                    <%=ne.UpTime %><img src="images/comment.gif" title="评论" />
                    [<%=ne.Agree %>]<img src="images/approve.gif" />
                    [<%=ne.Disagree %>]<img src="images/disapprove.gif" /></p>
                <p style="background-color: #f7f7f7; font-size: 14px; font-weight: bold; color: #ccc;
                    padding: 10px;">
                    <%=ne.Context %></p>
            </div>
        </div>
        <div style="margin-bottom: 0px; bottom: 0px;">
            <img src="images/icon_quote_e.gif" /></div>
        <div style="clear: both">
        </div>
    </div>
    <%} %>
</body>
</html>
