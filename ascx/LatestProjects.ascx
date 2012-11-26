<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LatestProjects.ascx.cs"
    Inherits="ascx_LatestProjects" %>
<table width="100%" style="border-collapse: collapse;">
    <asp:Repeater ID="DataList1" runat="server">
        <ItemTemplate>
            <tr style="border-style: dashed none none none; border-width: 1px; border-color: #dddddd;">
                <td rowspan="2" style="width: 60px;">
                    <img alt="工程" width="50" height="50" src="/images/project.png" />
                </td>
                <td colspan="2" style="padding: 5px;">
                    <asp:HyperLink ID="typeNameLabel" runat="server" Text='<%# Eval("typeName","[{0}]") %>' NavigateUrl='<%# Eval ("tid") %>'
                        Font-Size="14px" ForeColor="#105CB6" /> <asp:HyperLink ID="projectNameLabel" runat="server" NavigateUrl='<%# Eval("id","~/project.aspx?id={0}") %>'
                            Text='<%# Eval("projectName") %>' Font-Size="14px" ForeColor="#105CB6" />
                </td>
                <td>
                </td>
            </tr>
            <tr style="border-style: none none dashed none; border-width: 1px; border-color: #dddddd;">
                <td>
                </td>
                <td style="font-size: 12px; color: #999; padding-top: 3px;">
                    作者：<asp:Label ID="userNameLabel" runat="server" Text='<%# Eval("userName") %>' />
                    上传日期：<asp:Label ID="upTimeLabel" runat="server" Text='<%# Eval("upTime") %>' />
                </td>
                <td>
                </td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
</table>
<div style="margin-top: 15px" >
    <span style="border-radius: 3px; padding: 5px; background-color: #E3E3E3; color: #999999; line-height: 28px;">当前：<asp:Label ID="lbPage" runat="server" Text="1"></asp:Label>  总共：<asp:Label ID="lbtpage" runat="server" Text="总页码"></asp:Label>页
    </span> &nbsp;
     <asp:LinkButton ID="lbtnUp" runat="server" 
        onclick="lbtnUp_Click" CssClass="zPageBtn">上一页</asp:LinkButton>
      &nbsp;
      <asp:LinkButton ID="lbtnnext" runat="server" 
        onclick="lbtnnext_Click" CssClass="zPageBtn">下一页</asp:LinkButton>
     &nbsp;
     <asp:LinkButton ID="lbtnback" runat="server" 
        onclick="lbtnback_Click" CssClass="zPageBtn">最后一页</asp:LinkButton>
     &nbsp;
     <asp:LinkButton ID="lbtnone" runat="server" 
        onclick="lbtnone_Click" CssClass="zPageBtn">第一页</asp:LinkButton>
</div>
