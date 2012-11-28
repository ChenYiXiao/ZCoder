<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Project.master" AutoEventWireup="true"
    CodeFile="Project.aspx.cs" Inherits="Project" %>

<%@ Register Src="admin/RSManager/RSManager.ascx" TagName="RSManager" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="/Com/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <script type="text/javascript" src="/Com/zTree/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="/Com/zTree/js/jquery.ztree.core-3.5.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="zBlockLeft" style="width: 235px">
        目录结构：<br />
        <ul id="treeDemo" class="ztree">
        </ul>
    </div>
    <div class="zBlockLeft" style="width: 640px; margin-left: 20px;">
        <iframe id="sourceFrame" onload="Javascript:SetWinHeight(this)" src="" width="100%"
            scrolling="no" frameborder="0" style="background-color: #FFFFFF"></iframe>
    </div>
    <div style="clear: both">
        <script type="text/javascript">
		<!--
            var setting = {};

            var zNodes = [
            <%= ProjectNodes.ToString() %>
		];

        $(document).ready(function () {
            $.fn.zTree.init($("#treeDemo"), setting, zNodes);
        });
		//-->
	</script>
        <script language="javascript">
            function SetWinHeight(obj) {
                var win = obj;
                if (document.getElementById) {
                    if (win && !window.opera) {
                        win.height = 0;
                        if (win.contentDocument && win.contentDocument.body.offsetHeight)
                            win.height = win.contentDocument.body.offsetHeight + 20;
                        else if (win.Document && win.Document.body.scrollHeight)
                            win.height = win.Document.body.scrollHeight;
                    }
                }
            } </script>
    </div>
</asp:Content>
