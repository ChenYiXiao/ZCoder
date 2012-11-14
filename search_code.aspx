<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search_code.aspx.cs" Inherits="search_code" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="search_textbox" runat="server"></asp:TextBox>
        <asp:Button ID="search" runat="server" onclick="search_Click" Text="搜索" />
    
    </div>
    </form>
</body>
</html>
