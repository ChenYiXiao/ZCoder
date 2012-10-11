<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Redirect.aspx.cs" Inherits="Redirect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="layout.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 align="center">请稍等，正在跳转中...</h3>

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
 
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <p align="center">
                <asp:Label ID="lbtip" runat="server" 
        Text="成功，3秒后自动跳转，您也可以点击直接跳转。"></asp:Label>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
                </asp:Timer>
          </p>
        </ContentTemplate>
    </asp:UpdatePanel>
    
</asp:Content>

