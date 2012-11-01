<%@ Page Language="C#" AutoEventWireup="true" CodeFile="toAlert.aspx.cs" Inherits="Default2"  MasterPageFile="~/MasterPage.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="zRadioRec" style=" background-color:White">
     <table>
            <tr>
                <td align="right">
                    &nbsp;</td>
                <td  align="center" class="style1" >
                    <br />
                    个人资料修改</td>
                <td >
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    &nbsp;性别：</td>
                <td  align="right">
                    <br />
                 <asp:RadioButtonList ID="rb_Sex" runat="server" RepeatDirection="Horizontal" 
                        style="color: #999999">
        <asp:ListItem Value="man">男</asp:ListItem>
        <asp:ListItem Value="woman">女</asp:ListItem>
    </asp:RadioButtonList>
                    &nbsp;</td>
                <td height="60">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right">
                    <span class="style1">电子邮箱：</span><span class="style2"> </span>
                </td>
                <td  style="height:60px" align="right">
                    <asp:TextBox ID="tb_Email" runat="server" TabIndex="4" CssClass="zTextBox" 
                        ></asp:TextBox>
                </td>
                <td style="height:60">
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="tb_Email" 
                        ErrorMessage="&lt;img src=&quot;/images/regwrong.png&quot;&gt;邮箱地址不正确。" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <span class="style1">QQ</span>：
                </td>
                <td  style="height:60px" align="right" >
                    <asp:TextBox ID="tb_QQ" runat="server" TabIndex="5" CssClass="zTextBox"></asp:TextBox>
                </td>
                <td >
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height:80">
                    <div align="center">
                        <asp:Button ID="btn_Submit" runat="server" CssClass="zbutton" Text="修改" 
                             ValidationGroup="a" onclick="btnEdit_Click" />
                        &nbsp;<br />
                        <br />
                    </div>
                </td>
            </tr>
        </table>
    </div>
 </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            color: #666666;
        }
        .style2
        {
            color: #999999;
        }
    </style>
</asp:Content>
