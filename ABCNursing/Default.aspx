<%@ Page Title="Home" Language="VB" MasterPageFile="~/ABCNursingMasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .home {
            text-align:center;
        }
        
        table td {
            text-align: center;
        }
        table td img {
            width: 250px;
            height: 300px;
            margin-left: auto;
            margin-right:auto;
        }
        .auto-style1 {
            width: 100%;
        }
        
        
        .auto-style2 {
            width: 100%;
        }
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label>
    <img src="image/home.png" class="auto-style2" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     
    <table class="auto-style1">
        <tr>
            <td><img src="image/Awareness.png" /></td>
            <td><img src="image/Bepatient.png" /></td>
            <td><img src="image/Comfort.png" /></td>
        </tr>
    </table>
     
</asp:Content>

