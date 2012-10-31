<%@ Page Language="C#" AutoEventWireup="true" CodeFile="toAlert.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="alert" runat="server">
    <div>
     <table>
            <tr>
                <td align="right">
                    密 码：
                </td>
                <td  align="right" >
                    <asp:TextBox ID="tb_Password" runat="server" TextMode="Password" TabIndex="2" ></asp:TextBox>
                </td>
                <td >
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right">
                    确认密码：
                </td>
                <td  align="right">
                    <asp:TextBox ID="tb_ConfirmPwd" runat="server" TextMode="Password" TabIndex="3"></asp:TextBox>
                </td>
                <td height="60">
                    &nbsp;<asp:CompareValidator ID="CompareValidator1" 
                        runat="server" ControlToCompare="tb_Password"
                        ControlToValidate="tb_ConfirmPwd" 
                        ErrorMessage="&lt;img src=&quot;/images/regwrong.png&quot;&gt;两次输入的密码不一致。" 
                        ValidationGroup="a"></asp:CompareValidator>
                </td>
                <td >
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right">
                    电子邮箱：
                </td>
                <td  style="height:60px" align="right">
                    <asp:TextBox ID="tb_Email" runat="server" TabIndex="4" 
                        ></asp:TextBox>
                </td>
                <td style="height:60">
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="tb_Email" 
                        ErrorMessage="&lt;img src=&quot;/images/regwrong.png&quot;&gt;邮箱地址不正确。" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td >
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right">
                    QQ：
                </td>
                <td  style="height:60px" align="right" >
                    <asp:TextBox ID="tb_QQ" runat="server" TabIndex="5"></asp:TextBox>
                </td>
                <td >
                    &nbsp;
                </td>
                <td >
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="height:80">
                    <div align="center">
                        <asp:Button ID="btn_Submit" runat="server" CssClass="zbutton" Text="修改" 
                            OnClick="btn_Submit_Click" ValidationGroup="a" />
                        &nbsp;</div>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
