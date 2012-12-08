<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Project.master" AutoEventWireup="true"
    CodeFile="Project.aspx.cs" Inherits="Project" %>

<%@ Register Src="admin/RSManager/RSManager.ascx" TagName="RSManager" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <link rel="stylesheet" href="/Com/zTree/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <script type="text/javascript" src="/Com/zTree/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="/Com/zTree/js/jquery.ztree.core-3.5.js"></script>
    <link rel="stylesheet" type="text/css" href="styles/_Window.css" />
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
                            win.height = win.contentDocument.body.offsetHeight + 80;
                        else if (win.Document && win.Document.body.scrollHeight)
                            win.height = win.Document.body.scrollHeight;
                    }
                }
            } </script>
    </div>
    <div id="Data" style="display: none;">
        <div id="Works">
            <span id="startLine">起始行号：0</span> <span id="endLine">终止行号：0</span>
            <p id="tip">
                请再次点击某个行号按钮获得终止行的行号。也可直接填写注释。</p>
            <textarea id="noteContext" name="noteContext" style="width: 260px; height: 60px"></textarea>
            <script type="text/javascript" src="Window/_Window.js"></script>
            <script type="text/javascript" src="Window/index.js"></script>
            <script type="text/javascript">

                var startLine = -1;
                var endLine = -1;
                var isClicked = false;
                var popWindow;
                var cid = 0;
                function ClickLineNum(Num) {
                    if (typeof (popWindow) != 'undefined') {
                        $('#noteContext').show();
                        popWindow.OnCANCEL = function () {
                            isClicked = false;
                            popWindow.Close();
                            window.frames['sourceFrame'].Lowlight();
                        }
                        popWindow.OnOK = function () {
                            $('#tip').load(window.encodeURI('addnote.aspx?cid=' + cid + '&startline=' + startLine + '&endline=' + endLine + '&context=' + $('#noteContext').val()));
                            if ($('#tip').text() == "注释添加成功。") {
                                window.frames['sourceFrame'].document.location.reload();
                                isClicked = false;
                                $('#tip').text("注释添加成功。点击确定，关闭本窗口。");
                                $('#noteContext').val("");
                                window.frames['sourceFrame'].Lowlight();
                                popWindow.OnOK = popWindow.Close();

                            }
                        }
                    }
                    if (!isClicked) {
                        $('#tip').text('请再次点击某个行号按钮获得终止行的行号。');
                        isClicked = true;
                        startLine = Num;
                        endLine = Num;
                        $('#startLine').html('起始行号：<strong>' + Num + '</strong>');
                        $('#endLine').html('终止行号：<strong>' + Num + '</strong>');
                        window.frames['sourceFrame'].Highlight();
                        return;
                    }
                    else {
                        window.frames['sourceFrame'].Lowlight();
                        if (Num < startLine) {
                            var t = startLine;
                            startLine = Num;
                            endLine = t;
                        }
                        else {
                            endLine = Num;
                        }
                        $('#tip').text('请再次点击某个行号按钮获得终止行的行号。');
                        $('#startLine').html('起始行号：<strong>' + startLine + '</strong>');
                        $('#endLine').html('终止行号：<strong>' + endLine + '</strong>');
                        window.frames['sourceFrame'].Highlight();

                    }
                }

            </script>
        </div>
    </div>
</asp:Content>
