<%@ Page Language="C#" AutoEventWireup="true" CodeFile="comment.aspx.cs" Inherits="comment" %>

<!DOCTYPE html>

<html>
<head>
        <link type="text/css" rel="stylesheet" href="css/notes.css" />
</head>
<body >
   
    <form id="Form1" runat=server>
    
        <asp:TextBox ID="tb_comment" runat="server" Height="134px" TextMode="MultiLine" Width="361px"></asp:TextBox>
        <br />
        <br />
        <p></p>

        <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="提交" />&nbsp;&nbsp;
        <asp:Button ID="clear" runat="server" Text="清空" OnClick="clear_Click" />
    
        </form>

</body>
</html>