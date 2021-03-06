﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LatestComment.ascx.cs" Inherits="ascx_LatestComment" %>

<table width="100%" style="border-collapse: collapse;">
    <asp:Repeater ID="DataList1" runat="server">
   
        <ItemTemplate>
            <tr style="border-style: dashed none none none; border-width: 1px; border-color: #dddddd;">
                <td rowspan="2" style="width: 60px;">
                    <img alt="工程" width="50" height="50" src="/images/project.png" />
                </td>
               
                <td>
                </td>
            </tr>
            <tr style="border-style: none none dashed none; border-width: 1px; border-color: #dddddd;">
                <td>
                </td>
                <td style="font-size: 12px; color: #999; padding-top: 3px;">
                         <style type="text/css">
        p.MsoNormal {
            color:#333;
        }
        U {
        color:#105CB6;
        font-size:14px;
        }
        strong {
        color:#333;
        font-size:20px;
        }        
</style>
                    评论正文：<a href="LoadComment.aspx?nid=<%#Eval("nid")%>"><U><asp:Label ID="upTimeLabel" runat="server" Text='<%# Eval("c_context") %>' /></U></a><br/>
                    评论者：<asp:Label ID="Label1" runat="server" Text='<%# Eval("userName") %>' />
                    注释正文：<a href ="LoadNotes.aspx?nid=<%#Eval("nid")%>&cid=<%#Eval("cid")%>&startline=<%#Eval("startline")%>&isDing=2"><U><asp:Label ID="Label2" runat="server" Text='<%# Eval("n_context") %>' /></U></a><br/>
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
