<%@ Page Title="AdminReport" Language="VB" MasterPageFile="~/ABCNursingMasterPage.master" AutoEventWireup="false" CodeFile="AdminReport.aspx.vb" Inherits="AdminReport" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        Report</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        User Report</p>
    <p>
        &nbsp;</p>
<p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </p>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="100%">
    </rsweb:ReportViewer>
    <p>
        &nbsp;</p>
    <p>
        Baby Report
    </p>

    <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
    <rsweb:ReportViewer ID="ReportViewer2" runat="server" Width="100%">
    </rsweb:ReportViewer>


</asp:Content>

