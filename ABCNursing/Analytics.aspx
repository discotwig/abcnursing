<%@ Page Title="Analytics" Language="VB" MasterPageFile="~/ABCNursingMasterPage.master" AutoEventWireup="false" CodeFile="Analytics.aspx.vb" Inherits="Analytics" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-top: 5px;
        }

        .auto-style2 {
            width: 10%;
        }

        .auto-style3 {
            width: 15%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Analytics</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Baby</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList8" runat="server">
                    <asp:ListItem>Sam</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style2">Start Date</td>
            <td class="auto-style3">&nbsp;<asp:DropDownList ID="DropDownList6" runat="server">
                <asp:ListItem>3</asp:ListItem>
            </asp:DropDownList>
            </td>
            <td class="auto-style2">End Date</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList7" runat="server">
                    <asp:ListItem>21</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style2">Mood</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>All</asp:ListItem>
                    <asp:ListItem>Happy</asp:ListItem>
                    <asp:ListItem>Sad</asp:ListItem>
                    <asp:ListItem>Crying</asp:ListItem>
                    <asp:ListItem>Teething</asp:ListItem>
                    <asp:ListItem>Fretful</asp:ListItem>
                    <asp:ListItem>Sleeping</asp:ListItem>
                    <asp:ListItem>Anger</asp:ListItem>
                    <asp:ListItem>Depression</asp:ListItem>
                    <asp:ListItem>Homesick</asp:ListItem>
                    <asp:ListItem>Agitation</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Position</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>All</asp:ListItem>
                    <asp:ListItem>Laid-back</asp:ListItem>
                    <asp:ListItem>Cradle Hold</asp:ListItem>
                    <asp:ListItem>Cross-Cradle Hold</asp:ListItem>
                    <asp:ListItem>Rugby Ball Hold</asp:ListItem>
                    <asp:ListItem>Side-Lying</asp:ListItem>
                    <asp:ListItem>Dancer Hand</asp:ListItem>
                    <asp:ListItem>Nursing in a Sling</asp:ListItem>
                    <asp:ListItem>Dangle Feeding</asp:ListItem>
                    <asp:ListItem>Upright</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style2">Problems</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>All</asp:ListItem>
                    <asp:ListItem>None</asp:ListItem>
                    <asp:ListItem>Breast Engorgment</asp:ListItem>
                    <asp:ListItem>Leaking Breasts</asp:ListItem>
                    <asp:ListItem>Mastitis</asp:ListItem>
                    <asp:ListItem>Weak Latch</asp:ListItem>
                    <asp:ListItem>Mouth Problems</asp:ListItem>
                    <asp:ListItem>Poor Milk Supply</asp:ListItem>
                    <asp:ListItem>Flat or Inverted Nipples</asp:ListItem>
                    <asp:ListItem>Sore or Burning Nipples</asp:ListItem>
                    <asp:ListItem>Nipple Confusion</asp:ListItem>
                    <asp:ListItem>Plugged Milk Ducts</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
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

