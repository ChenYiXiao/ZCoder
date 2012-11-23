<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="Enviroment.aspx.cs" Inherits="admin_Enviroment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" runat="Server">
    <p>
    </p>
    <table class="style1">
        <tr>
            <th>
                运行环境监测：
            </th>
            <th>
                &nbsp;
            </th>
            <th>
                &nbsp;
            </th>
            <th>
                &nbsp;
            </th>
        </tr>
        <tr>
            <td>
                主机名：
            </td>
            <td>
                <%= Environment.MachineName  %>
            </td>
            <td>
                当前目录：
            </td>
            <td>
                <%=Environment.CurrentDirectory %>
            </td>
        </tr>
        <tr>
            <td>
                操作系统：
            </td>
            <td>
                <%=Environment.OSVersion %>
            </td>
            <td>
                进程数：
            </td>
            <td>
                <%=Environment.ProcessorCount %>
            </td>
        </tr>
        <tr>
            <td>
                用户名：
            </td>
            <td>
                <%=Environment.UserName %>
            </td>
            <td>
                .Net版本：
            </td>
            <td>
                <%=Environment.Version %>
            </td>
        </tr>
        <tr>
            <td>
                物理内存：
            </td>
            <td>
                <%=Environment.WorkingSet %>
            </td>
            <td>
                系统已运行时间：
            </td>
            <td>
                <%=Environment.TickCount/1000/60 %> 分
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
