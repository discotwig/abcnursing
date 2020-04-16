<%@ Page Title="" Language="VB" MasterPageFile="~/ABCNursingMasterPage.master" AutoEventWireup="false" CodeFile="AdminUserProfile.aspx.vb" Inherits="AdminUserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 151px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        User Profile Manager</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="container">
         
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Select Customer</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
           
        </table>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="402px">
        </asp:DetailsView> 
    </div>
</asp:Content>

