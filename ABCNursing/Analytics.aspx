<%@ Page Title="Analytics" Language="VB" MasterPageFile="~/ABCNursingMasterPage.master" AutoEventWireup="false" CodeFile="Analytics.aspx.vb" Inherits="Analytics" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="server">
    <h1>
        Analytics</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Baby</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource4" DataTextField="FirstName" DataValueField="FirstName">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.UsersBabyTableAdapter">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="UserID" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
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
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource3" DataTextField="Name" DataValueField="Name">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetName" TypeName="DataSetTableAdapters.MoodListTableAdapter"></asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Position</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="Name" DataValueField="Name" Height="16px">
                    <asp:ListItem Value="Choose"></asp:ListItem>
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetName" TypeName="DataSetTableAdapters.PositionListTableAdapter"></asp:ObjectDataSource>
            </td>
            <td class="auto-style2">Problems</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="Name" DataValueField="Name">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetName" TypeName="DataSetTableAdapters.ProblemsListTableAdapter"></asp:ObjectDataSource>
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

