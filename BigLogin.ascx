<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BigLogin.ascx.cs" Inherits="BigLogin" %>
<link href="layout.css" rel="stylesheet" type="text/css" />



<asp:Panel ID="pnl_Login" runat="server">

<asp:TextBox ID="tb_UserName" runat="server" CssClass="zTextBox"></asp:TextBox>
    <br>
    <br>
    <asp:TextBox ID="tb_Password" runat="server" CssClass="zTextBox" 
        TextMode="Password"></asp:TextBox>
    <p>
        <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="12px" 
            ForeColor="#999999" Text="自动登录" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="12px" 
            ForeColor="#0066FF">找回密码</asp:HyperLink>
    </p>
    <p>
        <asp:Button ID="btn_Login" runat="server" BackColor="#0099FF" BorderStyle="Solid" 
            BorderWidth="0px" CssClass="zRadioRec" Font-Bold="True" Font-Strikeout="False" 
            Height="30px" onclick="btn_Login_Click" Text="登陆" Width="100px" 
            ForeColor="White" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_Reg" runat="server" BackColor="#FF9900" BorderStyle="Solid" 
            BorderWidth="0px" CssClass="zRadioRec" Font-Bold="True" Font-Strikeout="False" 
            Height="30px" Text="立即注册" Width="100px" ForeColor="White" />
    </p>
    <br>
    <br>
    <br>
    <br></br>
    <br>
    <br>
    <br></br>
    <br>
    <br>
    <br>
    <br></br>
    <br>
    <br>
    <br></br>
    <br>
    <br>
    <br></br>
    <br>
    <br></br>
    <br>
    <br></br>
    <br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>


</asp:Panel>

<asp:Panel ID="pnl_User" runat="server">
    <table>
    <tr><td><asp:Image ID="Image1" runat="server" Height="70px" 
        ImageUrl="~/images/face_middle.jpg" Width="70px" />&nbsp; </td><td>
            <asp:HyperLink ID="hlUserName" runat="server" Font-Bold="True" 
                ForeColor="Black">[hlUserName]</asp:HyperLink>
            <br />
            <asp:HyperLink ID="hlAdmin" runat="server" ForeColor="#999999" 
                NavigateUrl="~/admin/Default.aspx" Visible="False">管理后台</asp:HyperLink>
            <br />
            <asp:Label ID="Label1" runat="server" Font-Size="12px" ForeColor="#999999" 
                Text="级别:小学生"></asp:Label>
            <br />
            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/level/21.gif" />
        </td>
    </tr>
    </table>
    
</asp:Panel>

