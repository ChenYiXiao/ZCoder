<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../layout.css" rel="stylesheet" type="text/css" />
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="background-color: #FFFFFF">
    <h2>
        &nbsp;</h2>
        <h2>
        欢迎使用ZCoder后台管理系统。</h2>
        <table style="margin: auto" width="80%">
            <tr>
                <td width="44%">

&nbsp; 后台地图：
                </td>
                <td>
                    &nbsp;&nbsp;当前统计信息：</td>
            </tr>
            <tr>
                <td width="44%">
                    <table class="zTable" width="400px">
                        <tr>
                            <td class="zTbTd">
                                <a href="AddUser.aspx" class="za">+用户管理</a><br />
                                &nbsp;&nbsp; -新增用户<br />
                                &nbsp;&nbsp; -用户列表<br />
                                &nbsp;&nbsp; -编辑用户<br />
                                &nbsp;&nbsp; -删除用户</td>
                            <td class="zTbTd">
                                +源码管理<br />
                                &nbsp;&nbsp; -工程管理<br />
                                &nbsp;&nbsp; -工程列表<br />
                                &nbsp;&nbsp; -上传源码<br />
                                &nbsp;&nbsp; -修改源码</td>
                        </tr>
                        <tr>
                            <td class="zTbTd">
                                +注释管理<br />
                                &nbsp;&nbsp; -注释列表<br />
                                &nbsp;&nbsp; -选择注释<br />
                                &nbsp;&nbsp; -删除注释</td>
                            <td class="zTbTd">
                                +评论管理<br />
                                &nbsp;&nbsp; -评论列表<br />
                                &nbsp;&nbsp; -删除评论</td>
                        </tr>
                    </table>
                </td>
                <td style="vertical-align: top">
                   <table class="zTable" width="400px">
                        <tr class="zTbTh">
                            <th class="zTbTh" width="40%">
                                统计项 
                            </th>
                            <th class="zTbTh" width="80%">
                                统计值 
                            </th>
                        </tr>
                        <tr class="zTbTd">
                            <td class="zTbTd" style="background-color: #FFFFFF" width="40%" align="center">
                                代码数</td>
                            <td class="zTbTd" width="80%" align="center">
                                $code
                            </td>
                        </tr>
                        <tr class="zTbTd">
                            <td class="zTbTd" width="40%" align="center">
                                注释数</td>
                            <td class="zTbTd" width="80%" align="center">
                                $note
                            </td>
                        </tr>
                        <tr class="zTbTd">
                            <td class="zTbTd" width="40%" align="center">
                                评论数 
                            </td>
                            <td class="zTbTd" width="80%" align="center">
                                $comment
                            </td>
                        </tr>
                        <tr class="zTbTd">
                            <td class="zTbTd" width="40%" align="center">
                                用户数 
                            </td>
                            <td class="zTbTd" width="80%" align="center">
                                $user
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
       
        <p>&nbsp;</p>
    </div>
</asp:Content>
