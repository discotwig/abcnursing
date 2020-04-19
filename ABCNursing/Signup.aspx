<%@ Page Title="" Language="VB" MasterPageFile="~/ABCNursingMasterPage.master" AutoEventWireup="false" CodeFile="Signup.aspx.vb" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table>
        <tr>
             <td>Desired Username</td>
            <td><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><asp:TextBox ID="txtPass" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Confirm Password</td>
            <td><asp:TextBox ID="txtConfirmPass" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Confirm Email</td>
            <td><asp:TextBox ID="txtConfirmEmail" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Button ID="btnClear" runat="server" Text="Clear All" /></td>
            <td><asp:Button ID="btnSubmit" runat="server" Text="Submit" /></td>
        </tr>
    </table>
</asp:Content>

