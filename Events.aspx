<%@ Page Title="Events" Language="VB" MasterPageFile="~/ABCNursingMasterPage.master" AutoEventWireup="false" CodeFile="Events.aspx.vb" Inherits="Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
        Events</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="sidenav" id="sidenav1">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="javascript:void(0)" onclick="openAdd()">Add</a>
        <a href="javascript:void(0)" onclick="openEdit()">Edit</a>
    </div>

    <div class="sidenav" id="Add">
        <a href="javascript:void(0)" class="closebtn" onclick="closeAdd()">&times;</a>
        <asp:Button ID="Button1" runat="server" Text="Button" /><asp:Button ID="Button2" runat="server" Text="Button" /><asp:Button ID="Button3" runat="server" Text="Button" />
    </div>

    <div class="sidenav" id="Edit">
        <a href="javascript:void(0)" class="closebtn" onclick="closeEdit()">&times;</a>
        <asp:Button ID="Button4" runat="server" Text="Button" /><asp:Button ID="Button5" runat="server" Text="Button" /><asp:Button ID="Button6" runat="server" Text="Button" />
    </div>
    <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open<br />
    </span>
    <asp:Calendar ID="Calendar1" runat="server" onclick="openNav()" Height="621px" Width="1058px"></asp:Calendar>
    &nbsp;<script>
        function openNav() {
            document.getElementById("sidenav1").style.width = "250px";
        }

        function openAdd() {
            document.getElementById("Add").style.width = "250px";
            document.getElementById("sidenav1").style.width = "0";
        }

        function openEdit() {
            document.getElementById("Edit").style.width = "250px";
            document.getElementById("sidenav1").style.width = "0";
        }

        function closeAdd() {
            document.getElementById("Add").style.width = "0";
            document.getElementById("sidenav1").style.width = "250px";
        }

        function closeEdit() {
            document.getElementById("Edit").style.width = "0";
            document.getElementById("sidenav1").style.width = "250px";
        }

        function closeNav() {
            document.getElementById("sidenav1").style.width = "0";
        }
    </script>
</asp:Content>

