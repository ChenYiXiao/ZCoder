<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="BigLogin.ascx" TagName="BigLogin" TagPrefix="uc1" %>
<%@ Register Src="ascx/LatestProjects.ascx" TagName="LatestProjects" TagPrefix="uc2" %>
<%@ Register Src="ascx/LatestNote.ascx" TagName="LatestNote" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/Tabs.css" rel="stylesheet" type="text/css" />
    <script src="js/tabs.js" type="text/javascript"></script>
    <script src="js/jquery1.3.2.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div class="zBlockLeft" style="width: 636px; float: left;">
            <div class="tab">
                <div class="tab_menu">
                    <ul>
                        <li class="selected">最新工程</li>
                        <li>最新注释</li>
                        <li>最新评论</li>
                    </ul>
                </div>
                <div class="tab_box">
                    <div>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <uc2:LatestProjects ID="LatestProjects1" runat="server" />
                            </ContentTemplate>

                        </asp:UpdatePanel>
                    </div>
                    <div class="hide">
                        
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate><uc2:LatestNote ID="LatestNote1" runat="server" /></ContentTemplate>
                        </asp:UpdatePanel>
                    
                       </div>
                    <div class="hide">
                        最新评论尚待完成</div>
                </div>
            </div>
       
        </div>
        <div class="zBlockLeft" 
            style="width: 240px; margin-left: 20px; padding: 15px; ">
            <uc1:BigLogin ID="BigLogin1" runat="server" />
        </div>
        <div style="clear: both">
        </div>
    </div>
</asp:Content>
