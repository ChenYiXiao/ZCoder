<%@ Page Title="ZCoder用户注册" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Reg.aspx.cs" Inherits="Reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="layout.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function submit_onclick() {

        }

// ]]>
    </script>
    <style type="text/css">
        .style1
        {
            height: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style=" background-color:white; padding:20px">
        <table border="0" width="100%" style="margin: auto">
            <tr>
                <td colspan="3">
                    <h3>
                        注册
                    </h3>
                    <hr align="left" width="450 " />
                </td>
                <td rowspan="8">
                    <h3>用户注册协议</h3>
                    <span class="Apple-style-span" 
                        
                        style="color: rgb(51, 51, 51); font-family: Arial; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 18px; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; ">
                    当您申请用户时，表示您已经同意遵守本规章。<span class="Apple-converted-space">&nbsp;</span><br />
                    欢迎您加入本站点参加交流和讨论，本站点为公共论坛，为维护网上公共秩序和社会稳定，请您自觉遵守以下条款：<span 
                        class="Apple-converted-space">&nbsp;</span><br />
                    <br />
                    一、不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益，不得利用本站制作、复制和传播下列信息：<br />
                    　 （一）煽动抗拒、破坏宪法和法律、行政法规实施的；<br />
                    　（二）煽动颠覆国家政权，推翻社会主义制度的；<br />
                    　（三）煽动分裂国家、破坏国家统一的；<br />
                    　（四）煽动民族仇恨、民族歧视，破坏民族团结的；<br />
                    　（五）捏造或者歪曲事实，散布谣言，扰乱社会秩序的；<br />
                    　（六）宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；<br />
                    　（七）公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；<br />
                    　（八）损害国家机关信誉的；<br />
                    　（九）其他违反宪法和法律行政法规的；<br />
                    　（十）进行商业广告行为的。<br />
                    <br />
                    二、互相尊重，对自己的言论和行为负责。<br />
                    三、禁止在申请用户时使用相关本站的词汇，或是带有侮辱、毁谤、造谣类的或是有其含义的各种语言进行注册用户，否则我们会将其删除。<br />
                    四、禁止以任何方式对本站进行各种破坏行为。<br />
                    五、如果您有违反国家相关法律法规的行为，本站概不负责，您的登录论坛信息均被记录无疑，必要时，我们会向相关的国家管理部门提供此类信息。</span></td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" height="60" width="100">
                    用户名：
                </td>
                <td height="60" width="110" align="right">
                            <asp:TextBox ID="tb_UserName" runat="server" AutoPostBack="True" OnTextChanged="tb_UserName_TextChanged"
                                TabIndex="1"></asp:TextBox>
                </td>
                <td height="60">
                    <asp:Label ID="lb_CkTip" runat="server"></asp:Label>
                </td>
                <td height="60" width="10%" style="text-align: center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" height="60" width="100">
                    密 码：
                </td>
                <td height="60" align="right" width="110">
                    <asp:TextBox ID="tb_Password" runat="server" TextMode="Password" TabIndex="2" ></asp:TextBox>
                </td>
                <td height="60">
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="tb_Password"
                        
                        ErrorMessage="&lt;img src=&quot;/images/regwrong.png&quot;&gt;密码长度必须大于6小于18。" OnServerValidate="CustomValidator1_ServerValidate"
                        ValidateEmptyText="True" ValidationGroup="a"></asp:CustomValidator>
                </td>
                <td height="60" width="10%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" height="60" width="100">
                    确认密码：
                </td>
                <td height="60" align="right" width="110">
                    <asp:TextBox ID="tb_ConfirmPwd" runat="server" TextMode="Password" TabIndex="3"></asp:TextBox>
                </td>
                <td height="60">
                    &nbsp;<asp:CompareValidator ID="CompareValidator1" 
                        runat="server" ControlToCompare="tb_Password"
                        ControlToValidate="tb_ConfirmPwd" 
                        ErrorMessage="&lt;img src=&quot;/images/regwrong.png&quot;&gt;两次输入的密码不一致。" 
                        ValidationGroup="a"></asp:CompareValidator>
                </td>
                <td height="60" width="10%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" height="60" width="100">
                    电子邮箱：
                </td>
                <td height="60" align="right" width="110">
                    <asp:TextBox ID="tb_Email" runat="server" TabIndex="4"></asp:TextBox>
                </td>
                <td height="60">
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="tb_Email" 
                        ErrorMessage="&lt;img src=&quot;/images/regwrong.png&quot;&gt;邮箱地址不正确。" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td height="60" width="10%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" height="60" width="100">
                    QQ：
                </td>
                <td height="60" align="right" width="110">
                    <asp:TextBox ID="tb_QQ" runat="server" TabIndex="5"></asp:TextBox>
                </td>
                <td height="60">
                    &nbsp;
                </td>
                <td height="60" width="10%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="3" class="style1">
                    <asp:CheckBox ID="cb_Agree" runat="server" Text="我已阅读并完全条款内容" TabIndex="6" 
                        Checked="True" />
                </td>
                <td align="center" width="10%" class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" height="80">
                    <div align="center">
                        <asp:Button ID="btn_Submit" runat="server" CssClass="zbutton" Text="提交注册" 
                            OnClick="btn_Submit_Click" ValidationGroup="a" />
                        &nbsp;</div>
                </td>
                <td height="80" width="10%">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
