<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rePassword.aspx.cs" Inherits="rePassword"  MasterPageFile="~/MasterPage.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="zRadioRec" style=" background-color:White">
    <h2>&nbsp;修改密码</h2>
    <hr />
    <br />
    <table style="margin: auto" width="80%">
        <tr>
            <td align="center">
                <asp:Label ID="label" runat="server" Text="密码："></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="tb_PassWord" runat="server" CssClass="zTextBox" TextMode=Password></asp:TextBox>
                <br />
                <br />
            </td>
            <td height="60">
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="tb_Password"
                        
                        ErrorMessage="&lt;img src=&quot;/images/regwrong.png&quot;&gt;密码长度必须大于6小于18。" OnServerValidate="CustomValidator1_ServerValidate"
                        ValidateEmptyText="True" ValidationGroup="a"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
            <td align="center">
                <asp:Label ID="label1" runat="server" Text="确认密码："></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="tb_confirm_password" runat="server" CssClass="zTextBox" TextMode=Password></asp:TextBox>
                <br />
                <br />
            </td>
             <td height="60">
                    &nbsp;<asp:CompareValidator ID="CompareValidator1" 
                        runat="server" ControlToCompare="tb_Password"
                        ControlToValidate="tb_confirm_password" 
                        ErrorMessage="&lt;img src=&quot;/images/regwrong.png&quot;&gt;两次输入的密码不一致。" 
                        ValidationGroup="a"></asp:CompareValidator>
                </td>
            </tr>
             <tr>
            <td>
                </td>
            <td>
                <br />
    <asp:Button ID="btn_Edit" runat="server" onclick="btnEdit_Click" 
         Text="修改" CssClass="zbutton" />
                <br />
            </td>
        </tr>
            </table>
            </asp:Content>