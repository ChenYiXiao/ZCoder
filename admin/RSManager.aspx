<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Master_Source.master" AutoEventWireup="true" CodeFile="RSManager.aspx.cs" Inherits="admin_RSManager"  %>

<%@ Register src="RSManager/RSManager.ascx" tagname="RSManager" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Ct1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Ct2" Runat="Server">
    <div class="zRadioRec">
 
    <uc1:RSManager ID="RSManager1" runat="server" />
    <br />
 
       
    </div>
</asp:Content>

