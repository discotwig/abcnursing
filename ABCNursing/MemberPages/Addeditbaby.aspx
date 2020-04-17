﻿<%@ Page Title="" Language="VB" MasterPageFile="~/ABCNursingMasterPage.master" AutoEventWireup="false" CodeFile="Addeditbaby.aspx.vb" Inherits="Addbaby" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="container">
        <h1>Add a baby</h1>

        <br />
        <table class="datatable">
            <tr>
                <td>First Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Gender</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="Choose"></asp:ListItem>
                        <asp:ListItem Value="Boy"></asp:ListItem>
                        <asp:ListItem Value="Girl"></asp:ListItem>
                   
                         </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>DOB</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="datatable">Weight</td>
                <td class="datatable">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Baby Picture</td>
                <td class="auto-style2">

                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />

                    </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
            </tr>
        </table>
        <h1>&nbsp;</h1>

    </div>
</asp:Content>

