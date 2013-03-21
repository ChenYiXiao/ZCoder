<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoadNotes.aspx.cs" Inherits="LoadNotes" %>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/notes.css" />
</head>
<body>
    <form id="Form1" runat=server>
    <% foreach (NoteEntity ne in assNotes)
       { %>
    <div style=" border-bottom-style: solid; border-bottom-width:1px; border-bottom-color:#f7f7f7; margin-bottom:5px">
        <div class="qoute" style="float: left">
            <div style="margin-left: 28px; float: left;">
                <p class="text">
                    <%
                    
                        
                        %> 
                    <%=ne.User.UserName %>  <%=ne.Id %>
                    发表于
                    <%=ne.UpTime %><img src="images/comment.gif" title="评论" />
                    [<%=ne.Agree %>]    <asp:LinkButton ID="Dig" runat="server"  Style="background-image: url('images/approve.gif');  "      CommandArgument="<%=ne.Id %>" OnClick="Dig_Click" Height="30px" Width="30px"   CausesValidation="True" Text="<%=ne.Agree %>" />
                    [<%=ne.Disagree %>] <asp:Button ID="Cai" runat="server"  Style="background-image: url(images/disapprove.gif);  width: 30px; height: 30px;"    CommandArgument="<%=ne.Id %> " OnClick="Cai_Click"  />
                </p>
                <p style="background-color: #f7f7f7; font-size: 14px; font-weight: bold; color: #333333;
                    padding: 10px;">
                    <%=ne.Context %></p>
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
