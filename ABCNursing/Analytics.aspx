<%@ Page Title="Analytics" Language="VB" MasterPageFile="~/ABCNursingMasterPage.master" AutoEventWireup="false" CodeFile="Analytics.aspx.vb" Inherits="Analytics" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            margin-top: 5px;
        }
        
        .auto-style2 {
            width: 10%;
        }

        .auto-style3 {
            width: 15%
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        Analytics</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table class="auto-style1" cellspacing="10">
        <tr>
            <td class="auto-style2">Baby</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style17"></td>
            <td class="auto-style17">
            </td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style2">Start Date</td>
            <td class="auto-style3">
                &nbsp;<asp:DropDownList ID="DropDownList6" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style2">End Date</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList7" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style2">Duration</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style2">Mood</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Position</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style2">Problems</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList5" runat="server">
                </asp:DropDownList>
            </td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" Text="Show Report" />
            </td>
        </tr>
    </table>

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="100%"></rsweb:ReportViewer>

</asp:Content>

