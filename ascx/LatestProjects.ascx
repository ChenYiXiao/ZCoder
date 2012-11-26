<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LatestProjects.ascx.cs"
    Inherits="ascx_LatestProjects" %>
<table width="100%" style="border-collapse: collapse; ">
    <asp:Repeater ID="DataList1" runat="server" DataSourceID="sds_LatestProjects">
        <ItemTemplate>
            <tr style=" border-style: dashed none none none; border-width: 1px; border-color: #dddddd;">
                <td rowspan="2" style="width: 60px;">
                    <img alt="工程" width="50" height="50" src="/images/project.png" />
                </td>
                <td colspan="2" style="padding: 5px;">
                    <asp:Label ID="typeNameLabel" runat="server" Text='<%# Eval("typeName","[{0}]") %>'
                        Font-Size="14px" ForeColor="#105CB6" /><asp:Label ID="projectNameLabel" runat="server"
                            Text='<%# Eval("projectName") %>' Font-Size="14px" ForeColor="#105CB6" />
                </td>
                <td>
                </td>
            </tr>
            <tr style=" border-style: none none dashed none;
    border-width: 1px; border-color: #dddddd;">
                <td>
                </td>
                <td style="font-size: 12px; color: #999;padding-top: 3px;">
                    作者：<asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                    上传日期：<asp:Label ID="upTimeLabel" runat="server" Text='<%# Eval("upTime") %>' />
                </td>
                <td>
                </td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="sds_LatestProjects" runat="server" ConnectionString="<%$ ConnectionStrings:db_ConnectionString %>"
        SelectCommand="SELECT tb_project.projectName, tb_user.userName, tb_project.id, tb_project.uid, tb_project.description, tb_project.upTime, tb_type.typeName, tb_project.tid FROM tb_project INNER JOIN tb_type ON tb_project.tid = tb_type.id INNER JOIN tb_user ON tb_project.uid = tb_user.id">
    </asp:SqlDataSource>
</table>
<asp:Label ID="lb" runat="server" Text="当前页码"></asp:Label>
<asp:Label ID="Label2" runat="server" Text="总页码"></asp:Label>
<asp:LinkButton ID="LinkButton1" runat="server">上一页</asp:LinkButton>
<asp:LinkButton ID="LinkButton2" runat="server">下一页</asp:LinkButton>
<asp:LinkButton ID="LinkButton3" runat="server">最后一页</asp:LinkButton>
<asp:LinkButton ID="LinkButton4" runat="server">第一页</asp:LinkButton>

